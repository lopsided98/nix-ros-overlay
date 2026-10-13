
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-imgui-vendor, mrpt-opengl }:
buildRosPackage {
  pname = "ros-humble-mrpt-imgui";
  version = "3.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_imgui/3.5.2-1.tar.gz";
    name = "3.5.2-1.tar.gz";
    sha256 = "9583760c3747822d5fbc73ea861942a18753890ddce929eb8180c4b26c3089d3";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mrpt-imgui-vendor mrpt-opengl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_imgui, wrapping rendering objects as a Dear ImGUI component";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
