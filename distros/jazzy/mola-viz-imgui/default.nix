
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, glfw3, mola-kernel, mrpt-gui, mrpt-imgui, mrpt-maps, mrpt-obs, mrpt-opengl, mrpt-viz }:
buildRosPackage {
  pname = "ros-jazzy-mola-viz-imgui";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_viz_imgui/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "b56cc0d270b305572ceb26bfc432cd252e8b274759f3ebd8b93825a8ee0f8f8d";
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
