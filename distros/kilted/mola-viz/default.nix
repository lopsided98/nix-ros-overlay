
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-libgui, mrpt-libmaps, mrpt-libopengl }:
buildRosPackage {
  pname = "ros-kilted-mola-viz";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_viz/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "b9a154453ef2108b87e5a9db88cc2dfc46498cfd6578373f75e27a14ff73b9c7";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt-libgui mrpt-libmaps mrpt-libopengl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "GUI for MOLA";
    license = with lib.licenses; [ gpl3Only ];
  };
}
