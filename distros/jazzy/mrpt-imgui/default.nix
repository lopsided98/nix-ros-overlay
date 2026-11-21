
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-imgui-vendor, mrpt-opengl }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-imgui";
  version = "3.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_imgui/3.6.3-1.tar.gz";
    name = "3.6.3-1.tar.gz";
    sha256 = "b093b3f6dbcbc0d9c28a2bfc7f4b89612c73b759c6c09df610c76ca5b0ead077";
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
