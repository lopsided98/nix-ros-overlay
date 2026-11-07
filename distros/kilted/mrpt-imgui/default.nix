
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-imgui-vendor, mrpt-opengl }:
buildRosPackage {
  pname = "ros-kilted-mrpt-imgui";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_imgui/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "004d68eba3fb5836b2f3537d1d5f38683f8e1490d11a523b7edd284c4adcd5eb";
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
