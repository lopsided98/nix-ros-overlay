
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-gui, mrpt-libapps-cli, wxGTK32 }:
buildRosPackage {
  pname = "ros-humble-mrpt-libapps-gui";
  version = "3.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_libapps_gui/3.1.4-1.tar.gz";
    name = "3.1.4-1.tar.gz";
    sha256 = "fab38d50fc460f62933f4a631b3c6b156e4f84c59c5a173594ca57c216c3a135";
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
