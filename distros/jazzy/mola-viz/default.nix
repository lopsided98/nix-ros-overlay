
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-libgui, mrpt-libmaps, mrpt-libopengl }:
buildRosPackage {
  pname = "ros-jazzy-mola-viz";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_viz/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "8c7207cb4100a9cb464f4aec95fe68d6647bfe4ee0771ab6bd475b07d86624ae";
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
