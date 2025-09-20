import 'package:flutter/material.dart';

class FormInput extends StatefulWidget {
  const FormInput({super.key});

  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  final _formKey = GlobalKey<FormState>();

  // ตัวแปรควบคุม input
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  String? _gender; // เพศ
  String? _province; // จังหวัด
  bool _isChecked = false; // ยอมรับเงื่อนไข

  final List<String> provinces = ['Bangkok', 'Chiang Mai', 'Phuket', 'Khon Kaen'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16), // แก้ตรงนี้
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Full Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Email
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Gender
                const Text("Gender"),
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile<String>(
                        title: const Text("Male"),
                        value: "Male",
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() {
                            _gender = value;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile<String>(
                        title: const Text("Female"),
                        value: "Female",
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() {
                            _gender = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Province Dropdown
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(labelText: "Province"),
                  value: _province,
                  items: provinces.map((String province) {
                    return DropdownMenuItem(
                      value: province,
                      child: Text(province),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _province = value;
                    });
                  },
                  validator: (value) => value == null ? 'Please select a province' : null,
                ),
                const SizedBox(height: 16),

                // Terms & Conditions
                CheckboxListTile(
                  title: const Text("Accept Terms & Conditions"),
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value ?? false;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                const SizedBox(height: 16),

                // Submit Button
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate() && _isChecked) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Form Submitted Successfully!')),
                        );
                        // แก้ print ให้ถูกต้อง
                        print("Name: ${_nameController.text}");
                        print("Email: ${_emailController.text}");
                        print("Gender: $_gender");
                        print("Province: $_province");
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Please complete the form')),
                        );
                      }
                    },
                    child: const Text("Submit"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
