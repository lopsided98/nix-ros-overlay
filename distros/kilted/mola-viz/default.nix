
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-gui, mrpt-maps, mrpt-opengl, mrpt-viz }:
buildRosPackage {
  pname = "ros-kilted-mola-viz";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_viz/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "7994d0434c068f0717195fbc4b17d7e828d9bb026b548efc95ea1fbaa350277b";
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
