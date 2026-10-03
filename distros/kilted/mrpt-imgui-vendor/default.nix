
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, glfw3, libGL, libGLU, mrpt-common }:
buildRosPackage {
  pname = "ros-kilted-mrpt-imgui-vendor";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_imgui_vendor/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "879716d3efee9c163bf3517f465c3a2e0556da0f0cf7083c0b1b8e1047527ac6";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ glfw3 libGL libGLU mrpt-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Vendored Dear ImGui (docking branch), ImPlot, portable-file-dialogs and an embedded icon font, built as one library for use by MRPT packages";
    license = with lib.licenses; [ bsdOriginal mit mit "WTFPL" zlib asl20 ];
  };
}
