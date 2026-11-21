
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, glfw3, mola-kernel, mrpt-gui, mrpt-imgui, mrpt-maps, mrpt-obs, mrpt-opengl, mrpt-viz }:
buildRosPackage {
  pname = "ros-lyrical-mola-viz-imgui";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/lyrical/mola_viz_imgui/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "487f35b53f346b45a366f1fcf427795a25efe117e3d03cd35f2f04708353f136";
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
