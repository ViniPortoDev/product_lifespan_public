import 'package:flutter/material.dart';
import 'package:product_lifespan/shared/widgets/pl_primary_button.dart';
import 'package:product_lifespan/shared/widgets/pl_text_form_field.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({super.key});

  @override
  State<BarcodeScannerPage> createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffc40000),
        title: const Text(
          'Escaneio o produto',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        //dawdw
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  PlTextFormField(
                    hintText: 'Código de barras',
                    suffixIcon: IconButton(
                      onPressed: () {
                        
                      },
                      icon: const Icon(Icons.camera_alt_outlined),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Expanded(
                        child: PlTextFormField(
                          hintText: 'Data de criação',
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: PlTextFormField(
                          hintText: 'Data de válidade',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              PlPrimaryButton(
                text: 'Salvar',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
