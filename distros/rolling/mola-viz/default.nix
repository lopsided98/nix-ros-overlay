
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-libgui, mrpt-libmaps, mrpt-libopengl }:
buildRosPackage {
  pname = "ros-rolling-mola-viz";
  version = "1.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_viz/1.9.1-1.tar.gz";
    name = "1.9.1-1.tar.gz";
    sha256 = "6def67676700f615a26e152d3cd1486a41988f08a7ba8d05d9c79d353fb3facf";
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
