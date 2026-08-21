
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, freeglut, glfw3, libGL, libGLU, mola-kernel, mrpt-libgui, mrpt-libmaps, mrpt-libobs, mrpt-libopengl }:
buildRosPackage {
  pname = "ros-lyrical-mola-viz-imgui";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/lyrical/mola_viz_imgui/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "eedfe07aed3b1630691ae92f0d3e28fcdb6861b9650f70a8e68c68f3a54d4906";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ freeglut glfw3 libGL libGLU mola-kernel mrpt-libgui mrpt-libmaps mrpt-libobs mrpt-libopengl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Dear ImGui (docking branch) GUI backend for MOLA";
    license = with lib.licenses; [ gpl3Only ];
  };
}
