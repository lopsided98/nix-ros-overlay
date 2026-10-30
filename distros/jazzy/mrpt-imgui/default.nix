
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-imgui-vendor, mrpt-opengl }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-imgui";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_imgui/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "3bda9210d2281613f2114b9bc6d00dc871176042a83a2824bccefebf3f97d026";
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
