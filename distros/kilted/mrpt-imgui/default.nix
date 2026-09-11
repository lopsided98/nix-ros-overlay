
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-opengl }:
buildRosPackage {
  pname = "ros-kilted-mrpt-imgui";
  version = "3.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_imgui/3.1.4-1.tar.gz";
    name = "3.1.4-1.tar.gz";
    sha256 = "44aa55b832aa0503284e1899c89a2ae452b58c1751b9d85bae4c48b68c6d1054";
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
