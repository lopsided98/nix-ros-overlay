
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-imgui-vendor, mrpt-opengl }:
buildRosPackage {
  pname = "ros-rolling-mrpt-imgui";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_imgui/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "75582d977f7fccda16e622e8d784874442dfdcd3bf828ebfe4e70b1d9833d832";
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
