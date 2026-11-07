
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, glfw3, libGL, libGLU, mrpt-common }:
buildRosPackage {
  pname = "ros-rolling-mrpt-imgui-vendor";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_imgui_vendor/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "8ba3aa78fe6fa7ff34d539ddc6503b3a15f27505920b6f483ec3836b6f90d0b1";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ glfw3 libGL libGLU mrpt-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Vendored Dear ImGui (docking branch), ImPlot, portable-file-dialogs and an embedded icon font, built as one library for use by MRPT packages";
    license = with lib.licenses; [ bsdOriginal mit mit wtfpl zlib asl20 ];
  };
}
