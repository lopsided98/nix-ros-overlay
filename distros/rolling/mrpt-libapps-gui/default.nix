
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-gui, mrpt-libapps-cli, wxwidgets_3_2 }:
buildRosPackage {
  pname = "ros-rolling-mrpt-libapps-gui";
  version = "3.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_libapps_gui/3.5.2-1.tar.gz";
    name = "3.5.2-1.tar.gz";
    sha256 = "2affe69887c7b073084c6757c5b0f73a7a4a10a283c46c4c0d2a592b46f3dacd";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen wxwidgets_3_2 ];
  propagatedBuildInputs = [ mrpt-gui mrpt-libapps-cli ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_libapps_gui";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
