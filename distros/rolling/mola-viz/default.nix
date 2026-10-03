
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-gui, mrpt-maps, mrpt-opengl, mrpt-viz }:
buildRosPackage {
  pname = "ros-rolling-mola-viz";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_viz/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "aaaaa70666ad6c399d4206c25760fb8e2c43765a569da1af15951f35899085bd";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt-gui mrpt-maps mrpt-opengl mrpt-viz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "GUI for MOLA";
    license = with lib.licenses; [ gpl3Only ];
  };
}
