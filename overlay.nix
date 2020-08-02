self: super: with super.lib;
foldr composeExtensions (_: _: {}) [
  (import ./pkgs)
  (import ./distros)
] self super
