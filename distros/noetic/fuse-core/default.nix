
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ceres-solver, eigen, fuse-msgs, pluginlib, rosconsole, roscpp, roslint, rostest }:
buildRosPackage {
  pname = "ros-noetic-fuse-core";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/fuse-release/archive/release/noetic/fuse_core/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "e3028de21273ab389dbb85c93b28c01ab7a24009d44ea407bb30b2b9ea04d36f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ ceres-solver eigen fuse-msgs pluginlib rosconsole roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fuse_core package provides the base class interfaces for the various fuse components. Concrete implementations of these
    interfaces are provided in other packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
