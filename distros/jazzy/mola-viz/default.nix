
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-gui, mrpt-maps, mrpt-opengl, mrpt-viz }:
buildRosPackage {
  pname = "ros-jazzy-mola-viz";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_viz/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "505ea3188883502785f302ff217b86cdfcfae6f9404c242d056bc33d3f08ea1d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt-gui mrpt-maps mrpt-opengl mrpt-viz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "GUI for MOLA";
    license = with lib.licenses; [ gpl3Only ];
  };
}
