
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-opengl }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-imgui";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_imgui/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "3e0db29ae3aafe9fff3a8b4cb119f08e9c64441d3d64f718601ab2d1169f0a88";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mrpt-opengl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_imgui, wrapping rendering objects as a Dear ImGUI component";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
