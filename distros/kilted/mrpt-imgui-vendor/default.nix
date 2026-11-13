
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, glfw3, libGL, libGLU, mrpt-common }:
buildRosPackage {
  pname = "ros-kilted-mrpt-imgui-vendor";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_imgui_vendor/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "ebc75a23a679effab3d0a38680216b0a44d7df0af6b379c7a73deb9333615a5b";
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
