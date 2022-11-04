
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, fuse-constraints, fuse-core, fuse-graphs, fuse-models, fuse-variables, geometry-msgs, nav-msgs, pluginlib, roscpp, roslint, rostest, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-fuse-optimizers";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/fuse-release/archive/release/melodic/fuse_optimizers/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "19db2d9a282a84189f9ad5ce940c4079f5d6bda5a93864fb128a4f5a41caa459";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ fuse-models geometry-msgs nav-msgs roslint rostest ];
  propagatedBuildInputs = [ diagnostic-updater fuse-constraints fuse-core fuse-graphs fuse-variables pluginlib roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fuse_optimizers package provides a set of optimizer implementations. An optimizer is the object responsible
    for coordinating the sensors and motion model inputs, computing the optimal state values, and providing access to
    to the optimal state via the publishers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
