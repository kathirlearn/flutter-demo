
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


const Color primaryOrange = Color(0xFFFF5000);


class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();

  final _phoneController = TextEditingController();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _referralController = TextEditingController();

  bool _showReferral = false;

  @override
  void dispose() {
    _phoneController.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _referralController.dispose();
    super.dispose();
  }

  void _continue() {
    FocusScope.of(context).unfocus();

    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DummyListPage(
            name: _nameController.text.trim(),
            phone: _phoneController.text.trim(),
            email: _emailController.text.trim(),
          ),
        ),
      );
    }
  }

  String? _validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    }

    if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      return 'Phone number must contain exactly 10 digits';
    }

    return null;
  }

  String? _validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your name';
    }

    if (!RegExp(r'^[a-zA-Z ]{3,}$')
        .hasMatch(value.trim())) {
      return 'Enter at least 3 letters (alphabets only)';
    }

    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your email';
    }

    final emailPattern =
        r'^[a-zA-Z0-9.!#$%&*+/=?^_`{|}~-]+@'
        r'[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?'
        r'(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]*'
        r'[a-zA-Z0-9])?)+$';

    if (!RegExp(emailPattern).hasMatch(value.trim())) {
      return 'Please enter a valid email address';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 30),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Close button
                IconButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                  },
                  icon: const Icon(
                    Icons.close,
                    size: 32,
                    color: Color(0xFF222222),
                  ),
                  padding: EdgeInsets.zero,
                  alignment: Alignment.centerLeft,
                ),

                const SizedBox(height: 24),

                // Heading and illustration
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Sign up',
                            style: TextStyle(
                              fontSize: 38,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Wrap(
                            crossAxisAlignment:
                            WrapCrossAlignment.center,
                            children: [
                              const Text(
                                'or ',
                                style: TextStyle(fontSize: 19),
                              ),
                              GestureDetector(
                                onTap: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        'Login screen coming soon',
                                      ),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'login to your account',
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: primaryOrange,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 96,
                      height: 96,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFFF7F7F7),
                        border: Border.all(
                          color: const Color(0xFFFAFAFA),
                          width: 7,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '🌯',
                        style: TextStyle(fontSize: 43),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 22),

                Container(
                  width: 45,
                  height: 2,
                  color: Colors.black,
                ),

                const SizedBox(height: 54),

                // Input fields
                _buildTextField(
                  hint: 'Phone number',
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  validator: _validatePhone,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(10),
                  ],
                ),

                _buildTextField(
                  hint: 'Name',
                  controller: _nameController,
                  keyboardType: TextInputType.name,
                  validator: _validateName,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      RegExp(r'[a-zA-Z ]'),
                    ),
                  ],
                ),

                _buildTextField(
                  hint: 'Email',
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: _validateEmail,
                  textCapitalization: TextCapitalization.none,
                ),

                const SizedBox(height: 38),

                // Referral code toggle
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _showReferral = !_showReferral;
                    });
                  },
                  child: const Text(
                    'Have a referral code?',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF6089DF),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                if (_showReferral) ...[
                  const SizedBox(height: 14),
                  TextFormField(
                    controller: _referralController,
                    decoration: InputDecoration(
                      hintText: 'Referral code',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                  ),
                ],

                const SizedBox(height: 30),

                // Continue button
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: _continue,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryOrange,
                      foregroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                      elevation: 2,
                    ),
                    child: const Text(
                      'CONTINUE',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                const Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'By creating an account, I accept the ',
                      ),
                      TextSpan(
                        text: 'Terms & Conditions',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: ' & '),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String hint,
    required TextEditingController controller,
    required TextInputType keyboardType,
    required String? Function(String?) validator,
    List<TextInputFormatter>? inputFormatters,
    TextCapitalization textCapitalization =
        TextCapitalization.words,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      inputFormatters: inputFormatters,
      validator: validator,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.black87,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: Color(0xFF858585),
          fontSize: 20,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 29,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            color: Color(0xFFCCCCCC),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            color: Color(0xFFCCCCCC),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            color: primaryOrange,
            width: 1.5,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}



// Dummy page shown after successful validation
class DummyListPage extends StatelessWidget {
  final String name;
  final String phone;
  final String email;

  const DummyListPage({
    super.key,
    required this.name,
    required this.phone,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    final items = [
      'My Profile',
      'My Orders',
      'My Addresses',
      'Notifications',
      'Help & Support',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryOrange,
        foregroundColor: Colors.white,
        title: const Text('Dashboard'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            'Welcome, $name!',
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Signup completed successfully.',
            style: TextStyle(
              color: Colors.green,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 24),

          Card(
            child: ListTile(
              leading: const Icon(
                Icons.person,
                color: primaryOrange,
              ),
              title: Text(name),
              subtitle: Text('$phone\n$email'),
              isThreeLine: true,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'Your Menu',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          ...items.map(
                (item) => Card(
              elevation: 0,
              child: ListTile(
                leading: const Icon(
                  Icons.circle_outlined,
                  color: primaryOrange,
                ),
                title: Text(item),
                trailing: const Icon(
                  Icons.chevron_right,
                ),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$item selected'),
                    ),
                  );
                },
              ),
            ),
          ),

          const SizedBox(height: 20),

          OutlinedButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            label: const Text('Back to Sign up'),
          ),
        ],
      ),
    );
  }
}
