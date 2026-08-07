
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-libgui, mrpt-libmaps, mrpt-libopengl }:
buildRosPackage {
  pname = "ros-rolling-mola-viz";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_viz/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "3eaaa9a76d35e931d6931cacd8319a213d70aa39769c4de07db10bc828e022b1";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt-libgui mrpt-libmaps mrpt-libopengl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "GUI for MOLA";
    license = with lib.licenses; [ gpl3Only ];
  };
}
