
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python }:
buildRosPackage {
  pname = "ros-humble-simple-term-menu-vendor";
  version = "1.5.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/simple_term_menu_vendor-release/archive/release/humble/simple_term_menu_vendor/1.5.5-1.tar.gz";
    name = "1.5.5-1.tar.gz";
    sha256 = "c6c3e381e8c43f5affa69e1820458ba56abbf142466ad5b375e2cc58b3846541";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''A Python package which creates simple interactive menus on the command line.'';
    license = with lib.licenses; [ mit ];
  };
}
