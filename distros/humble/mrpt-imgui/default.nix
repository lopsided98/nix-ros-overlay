
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-imgui-vendor, mrpt-opengl }:
buildRosPackage {
  pname = "ros-humble-mrpt-imgui";
  version = "3.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_imgui/3.6.4-1.tar.gz";
    name = "3.6.4-1.tar.gz";
    sha256 = "2a0091fa7e483d8c67e6477d42e24ec1fb82ebcba09c11fc8ba30e8f74998bb0";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mrpt-imgui-vendor mrpt-opengl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_imgui: a Dear ImGui application framework (app shell with docking panels, 3D scene views, timeline, plots, image views, log console and file dialogs)";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
