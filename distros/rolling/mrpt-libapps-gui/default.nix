
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-gui, mrpt-libapps-cli, wxGTK32 }:
buildRosPackage {
  pname = "ros-rolling-mrpt-libapps-gui";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_libapps_gui/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "4758c0d3734a9ed07b6264c1d9d46fd5580e8562253bf012b4ad81b2cfc9b0bf";
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
