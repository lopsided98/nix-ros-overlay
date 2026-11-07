
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-imgui-vendor, mrpt-opengl }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-imgui";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_imgui/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "e594bb7ea4787de0d1ee24911c553ae0db9f4f06d128d5b47c3dcb207a4f678f";
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
