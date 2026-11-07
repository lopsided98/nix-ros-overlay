
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, glfw3, mola-kernel, mrpt-gui, mrpt-imgui, mrpt-maps, mrpt-obs, mrpt-opengl, mrpt-viz }:
buildRosPackage {
  pname = "ros-lyrical-mola-viz-imgui";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/lyrical/mola_viz_imgui/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "d62b37a327b61cace4362e08aa1a66861ae124d8cabfa016e26f4ff8be4733c0";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ glfw3 mola-kernel mrpt-gui mrpt-imgui mrpt-maps mrpt-obs mrpt-opengl mrpt-viz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Dear ImGui (docking branch) GUI backend for MOLA";
    license = with lib.licenses; [ gpl3Only ];
  };
}
