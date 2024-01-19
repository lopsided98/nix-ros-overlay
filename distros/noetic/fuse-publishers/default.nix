
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fuse-constraints, fuse-core, fuse-graphs, fuse-variables, geometry-msgs, nav-msgs, pluginlib, roscpp, roslint, rostest, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-fuse-publishers";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/fuse-release/archive/release/noetic/fuse_publishers/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "1939abba76b170966680595857a504b304f86b0ed514fa8416f1b920b9366b8b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ fuse-constraints fuse-graphs roslint rostest ];
  propagatedBuildInputs = [ fuse-core fuse-variables geometry-msgs nav-msgs pluginlib roscpp tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fuse_publishers package provides a set of common publisher plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
