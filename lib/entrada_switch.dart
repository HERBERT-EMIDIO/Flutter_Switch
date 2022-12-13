import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({super.key});

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaUsuario = false;
  bool _opcaoUsuario = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
        backgroundColor: Colors.redAccent[200],
      ),
      body: Container(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
//===================== USANDO SWITCH =============================//
            /*Switch(
              value: _escolhaUsuario,
              onChanged: (valor) {
                setState(() {
                  _escolhaUsuario = valor;
                });
                print("Resultado: ${_escolhaUsuario}");
              },
            ),
            */
//======================== FIM DO SWITCH ==========================//

            SwitchListTile(
              title: Text("Modo Avião"),
              subtitle: Text(
                  "Quando ativado, desativa a capacidade do seu telefone de se conectar por redes de celular, Wi-Fi ou Bluetooth."),
              activeColor: Colors.blueGrey,
              selected: false,
              //secondary: Icon(Icons.mobile_off_outlined),
              value: _opcaoUsuario,
              onChanged: (valor) {
                setState(() {
                  _opcaoUsuario = valor;
                });
                print("Modo Avião: $_opcaoUsuario");
              },
            ),

            SwitchListTile(
              title: Text("Receber notificações?"),
              subtitle: Text(
                  "Quando você escolhe essa opção como padrão, a configuração se aplica a todos os apps. Para bloquear apenas notificações de apps específicos,"),
              value: _escolhaUsuario,
              onChanged: (valor) {
                setState(() {
                  _escolhaUsuario = valor;
                });
                print("Notificações: $_escolhaUsuario");
              },
            ),
          ],
        ),
      ),
    );
  }
}
