
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, ceres-solver, eigen, fuse-constraints, fuse-core, fuse-graphs, fuse-msgs, fuse-publishers, fuse-variables, gbenchmark, geometry-msgs, message-generation, message-runtime, nav-msgs, pluginlib, roscpp, roslint, rostest, sensor-msgs, std-srvs, tf2, tf2-2d, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-fuse-models";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/fuse-release/archive/release/noetic/fuse_models/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "e44698977ad88553aa308b36d12d9a4031eaa870a8f389833ad92e0eed2363fd";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation roslint ];
  checkInputs = [ gbenchmark rostest ];
  propagatedBuildInputs = [ boost ceres-solver eigen fuse-constraints fuse-core fuse-graphs fuse-msgs fuse-publishers fuse-variables geometry-msgs message-runtime nav-msgs pluginlib roscpp sensor-msgs std-srvs tf2 tf2-2d tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fuse plugins that implement various kinematic and sensor models'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
