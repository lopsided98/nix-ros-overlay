
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-opengl }:
buildRosPackage {
  pname = "ros-rolling-mrpt-imgui";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_imgui/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "4baf8276f9b4ddae9674433c5eb1a9900fb5bf17f2a60bea96bb83e208706a58";
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
