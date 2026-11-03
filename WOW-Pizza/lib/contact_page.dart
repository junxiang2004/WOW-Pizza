import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  // Form key to handle validation
  final _formKey = GlobalKey<FormState>();

  // Controllers to retrieve text input
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  bool _isSubmitting = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isSubmitting = true;
      });

      // Simulate a network request
      Future.delayed(const Duration(seconds: 2), () {
        if (!mounted) return;

        setState(() {
          _isSubmitting = false;
        });

        // Clear fields and show success message
        _nameController.clear();
        _emailController.clear();
        _messageController.clear();

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Message sent successfully! We will get back to you soon.',
            ),
            backgroundColor: Colors.green,
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8F0),
      appBar: AppBar(
        title: const Text('Contact Us'),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Your Name',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),

                  // Email Field
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email Address',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!value.contains('@') || !value.contains('.')) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),

                  // Message Field
                  TextFormField(
                    controller: _messageController,
                    maxLines: 5,
                    decoration: const InputDecoration(
                      labelText: 'Message',
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(bottom: 80),
                        child: Icon(Icons.message),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your message';
                      }
                      if (value.trim().length < 10) {
                        return 'Message must be at least 10 characters long';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),

                  // Submit Button
                  ElevatedButton(
                    onPressed: _isSubmitting ? null : _submitForm,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: _isSubmitting
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text(
                            'Send Message',
                            style: TextStyle(fontSize: 16),
                          ),
                  ),
                  const SizedBox(height: 40),
                  const Divider(),
                  const SizedBox(height: 20),

                  // Direct Contact Info Section
                  const Text(
                    'Other Ways to Reach Us',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  const ListTile(
                    leading: Icon(Icons.email_outlined, color: Colors.blue),
                    title: Text('wow_pizza@gmail.com'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.phone_outlined, color: Colors.blue),
                    title: Text('+60 12-345 6789'),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.location_on_outlined,
                      color: Colors.blue,
                    ),
                    title: Text(
                      'No.666 , Jalan Six, 93000 Kuching, Sarawak, Malaysia',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
