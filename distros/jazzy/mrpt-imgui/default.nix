
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-imgui-vendor, mrpt-opengl }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-imgui";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_imgui/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "e11ffeed7b45af5fcc27121d21dc42b26dd5cff5627924baa8d33b18c22cd5e8";
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
