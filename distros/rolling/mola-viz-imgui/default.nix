
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, freeglut, glfw3, libGL, libGLU, mola-kernel, mrpt-libgui, mrpt-libmaps, mrpt-libobs, mrpt-libopengl }:
buildRosPackage {
  pname = "ros-rolling-mola-viz-imgui";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_viz_imgui/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "0cad77b33d7f246e1a7d860198e1f409edcb51b284f2a10a2b5f948ada36afba";
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
