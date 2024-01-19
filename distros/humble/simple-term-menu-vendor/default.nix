
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-simple-term-menu-vendor";
  version = "1.5.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/simple_term_menu_vendor-release/archive/release/humble/simple_term_menu_vendor/1.5.7-1.tar.gz";
    name = "1.5.7-1.tar.gz";
    sha256 = "f4e8e4a75bbe5e87372fa093968765b32034e4e2e7729381c6d291ec51344e6a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''A Python package which creates simple interactive menus on the command line.'';
    license = with lib.licenses; [ mit ];
  };
}
