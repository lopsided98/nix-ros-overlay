
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-gui, mrpt-libapps-cli, wxGTK32 }:
buildRosPackage {
  pname = "ros-humble-mrpt-libapps-gui";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_libapps_gui/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "17054ea89e81ff86c6618723740ebce2db0b1b58d289e31799bf7525f33b4073";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen wxGTK32 ];
  propagatedBuildInputs = [ mrpt-gui mrpt-libapps-cli ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_libapps_gui";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
