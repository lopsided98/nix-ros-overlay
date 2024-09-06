
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-simple-term-menu-vendor";
  version = "1.5.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/simple_term_menu_vendor-release/archive/release/jazzy/simple_term_menu_vendor/1.5.7-1.tar.gz";
    name = "1.5.7-1.tar.gz";
    sha256 = "4a9a521e7e3bccff7483d1b8ef49853376a9129bc32bfbd2f415210aecac1728";
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
