
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, fuse-constraints, fuse-core, fuse-msgs, fuse-variables, geometry-msgs, qt5, roslint, rviz, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-fuse-viz";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/fuse-release/archive/release/noetic/fuse_viz/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "579487efe209c56eb45f26119de0668e07254377b28bca28cae46660decba942";
  };

  buildType = "catkin";
  buildInputs = [ catkin qt5.qtbase ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ eigen fuse-constraints fuse-core fuse-msgs fuse-variables geometry-msgs rviz tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fuse_viz package provides visualization tools for fuse.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
