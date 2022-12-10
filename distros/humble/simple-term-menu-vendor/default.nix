
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-simple-term-menu-vendor";
  version = "1.5.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/simple_term_menu_vendor-release/archive/release/humble/simple_term_menu_vendor/1.5.4-1.tar.gz";
    name = "1.5.4-1.tar.gz";
    sha256 = "5bb5f723b52aa72ebde2a06c4f13ab65bac8ec49395d7b791d2263351eeb6074";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A Python package which creates simple interactive menus on the command line.'';
    license = with lib.licenses; [ mit ];
  };
}
