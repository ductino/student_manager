import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/student.dart';
import '../providers/student_provider.dart';

class StudentFormScreen extends StatefulWidget {
  final Student? student;
  const StudentFormScreen({super.key, this.student});

  @override
  State<StudentFormScreen> createState() => _StudentFormScreenState();
}

class _StudentFormScreenState extends State<StudentFormScreen> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _msController;
  late TextEditingController _nameController;
  late TextEditingController _dobController;
  late TextEditingController _classController;
  late TextEditingController _gpaController;

  String _gender = 'Male';

  @override
  void initState() {
    super.initState();
    final s = widget.student;

    _msController = TextEditingController(text: s?.msSv ?? '');
    _nameController = TextEditingController(text: s?.name ?? '');
    _dobController = TextEditingController(text: s?.dob ?? '');
    _gender = s?.gender ?? 'Male';
    _classController = TextEditingController(text: s?.className ?? '');
    _gpaController = TextEditingController(text: s?.gpa.toString() ?? '0.0');
  }

  @override
  void dispose() {
    _msController.dispose();
    _nameController.dispose();
    _dobController.dispose();
    _classController.dispose();
    _gpaController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;

    final prov = Provider.of<StudentProvider>(context, listen: false);
    final gpa = double.parse(_gpaController.text.trim());

    if (widget.student == null) {
      await prov.addStudent(
        msSv: _msController.text.trim(),
        name: _nameController.text.trim(),
        dob: _dobController.text.trim(),
        gender: _gender,
        className: _classController.text.trim(),
        gpa: gpa,
      );
    } else {
      final s = widget.student!;
      s.msSv = _msController.text.trim();
      s.name = _nameController.text.trim();
      s.dob = _dobController.text.trim();
      s.gender = _gender;
      s.className = _classController.text.trim();
      s.gpa = gpa;

      await prov.updateStudent(s);
    }

    if (!mounted) return;
    Navigator.pop(context);
  }

  Widget _buildTextField(
      {required TextEditingController controller,
      required String label,
      TextInputType type = TextInputType.text,
      String? Function(String?)? validator}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        validator: validator,
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: Colors.grey.shade100,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isEdit = widget.student != null;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          isEdit ? 'Chỉnh sửa sinh viên' : 'Thêm sinh viên',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 480),
          child: Card(
            margin: const EdgeInsets.all(16),
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    _buildTextField(
                      controller: _msController,
                      label: 'MSSV',
                      validator: (v) =>
                          v == null || v.isEmpty ? 'Bắt buộc' : null,
                    ),
                    _buildTextField(
                      controller: _nameController,
                      label: 'Họ tên',
                      validator: (v) =>
                          v == null || v.isEmpty ? 'Bắt buộc' : null,
                    ),
                    _buildTextField(
                      controller: _dobController,
                      label: 'Ngày sinh (YYYY-MM-DD)',
                    ),

                    // Dropdown đẹp
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: DropdownButtonFormField<String>(
                        initialValue: _gender,
                        decoration: InputDecoration(
                          labelText: 'Giới tính',
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        items: const [
                          DropdownMenuItem(value: 'Male', child: Text('Nam')),
                          DropdownMenuItem(value: 'Female', child: Text('Nữ')),
                        ],
                        onChanged: (v) {
                          if (v != null) setState(() => _gender = v);
                        },
                      ),
                    ),

                    _buildTextField(
                      controller: _classController,
                      label: 'Lớp',
                    ),
                    _buildTextField(
                      controller: _gpaController,
                      label: 'GPA',
                      type: TextInputType.number,
                      validator: (v) {
                        if (v == null || v.isEmpty) return 'Bắt buộc';

                        final d = double.tryParse(v);
                        if (d == null || d < 0 || d > 4) return 'GPA 0.0 - 4.0';

                        return null;
                      },
                    ),

                    const SizedBox(height: 20),

                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        onPressed: _save,
                        child: const Text(
                          'Lưu',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
