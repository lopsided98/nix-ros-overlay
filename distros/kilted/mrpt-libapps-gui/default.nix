
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-gui, mrpt-libapps-cli, wxGTK32 }:
buildRosPackage {
  pname = "ros-kilted-mrpt-libapps-gui";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_libapps_gui/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "268197f997f23fd40fb0704ef54e112cbbbf778a7089fcc4277a0b250f7c8d26";
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
