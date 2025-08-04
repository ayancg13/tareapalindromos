bool esPalindromo(String texto) {
  String textoLimpio = texto.toLowerCase().replaceAll(RegExp(r'\s+'), '');

  textoLimpio = textoLimpio.replaceAll(RegExp(r'[^\w]'), '');

  String reverso = textoLimpio.split('').reversed.join('');

  print('Texto original: "$texto"');
  print('¿Es palíndromo?: ${textoLimpio == reverso}');
  print('------------------------------------------');

  return textoLimpio == reverso;
}

void main() {
  esPalindromo("Oso");                  
  esPalindromo("Anita lava la tina");         
  esPalindromo("¿Acaso hubo búhos acá?");            
  esPalindromo("Swiftie");          
  esPalindromo("Eco");        
  esPalindromo("4567");                 
  esPalindromo("1221");                 
  esPalindromo("Sol");                  
}
