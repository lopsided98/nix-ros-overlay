
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-simple-term-menu-vendor";
  version = "1.5.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/simple_term_menu_vendor-release/archive/release/lyrical/simple_term_menu_vendor/1.5.7-1.tar.gz";
    name = "1.5.7-1.tar.gz";
    sha256 = "bb4a246b59f3cc78df1c95014b0bcb5979ee4c08d98213d1ee95d14fdc2f8c51";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "A Python package which creates simple interactive menus on the command line.";
    license = with lib.licenses; [ mit ];
  };
}
