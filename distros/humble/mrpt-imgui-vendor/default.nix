
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, glfw3, libGL, libGLU, mrpt-common }:
buildRosPackage {
  pname = "ros-humble-mrpt-imgui-vendor";
  version = "3.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_imgui_vendor/3.6.3-1.tar.gz";
    name = "3.6.3-1.tar.gz";
    sha256 = "8aa8ebcaa4adffdae60f1a904ecc16f58413d642ccb9a5fe201fe147340a15ba";
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
