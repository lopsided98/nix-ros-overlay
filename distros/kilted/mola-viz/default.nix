
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt-gui, mrpt-maps, mrpt-opengl, mrpt-viz }:
buildRosPackage {
  pname = "ros-kilted-mola-viz";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_viz/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "d4eff01fdda2d3d0af2242c18a771e51f9897521986592faad19d1711813cdc2";
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
