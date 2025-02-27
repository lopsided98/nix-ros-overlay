
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-libgui, mrpt-libmaps, mrpt-libopengl }:
buildRosPackage {
  pname = "ros-humble-mola-viz";
  version = "1.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_viz/1.6.1-1.tar.gz";
    name = "1.6.1-1.tar.gz";
    sha256 = "32fcb9aea8cfdc1f388363972a7cbde396933d104eb3accbb02e3f13ee767650";
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
