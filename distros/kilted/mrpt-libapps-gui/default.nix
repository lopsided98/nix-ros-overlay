
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-gui, mrpt-libapps-cli, wxwidgets_3_2 }:
buildRosPackage {
  pname = "ros-kilted-mrpt-libapps-gui";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_libapps_gui/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "72eaab263daa41fef2abe6aac6a8e7aa0f8d992b89f2719174529e88b56c914d";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ mrpt-gui mrpt-libapps-cli wxwidgets_3_2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_libapps_gui";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
