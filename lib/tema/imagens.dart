/// Imagens placeholder usadas enquanto não há backend nem upload de avatar.
///
/// Centralizar as URLs evita repetir a mesma string em vários cabeçalhos e
/// facilita trocar o avatar real quando a integração existir.
abstract final class AppImagens {
  static const String avatarAluno = 'https://i.pravatar.cc/150?img=32';
  static const String avatarPerfil = 'https://i.pravatar.cc/150?img=11';
}
