
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, ceres-solver, eigen, fuse-constraints, fuse-core, fuse-graphs, fuse-msgs, fuse-publishers, fuse-variables, gbenchmark, geometry-msgs, message-generation, message-runtime, nav-msgs, pluginlib, roscpp, roslint, rostest, sensor-msgs, std-srvs, tf2, tf2-2d, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-fuse-models";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/fuse-release/archive/release/melodic/fuse_models/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "2998b03703ba53c58f02faef9eb706ab91c7f8e51b53c23da8922539026dafa7";
  };

  buildType = "catkin";
  buildInputs = [ message-generation roslint ];
  checkInputs = [ gbenchmark rostest ];
  propagatedBuildInputs = [ boost ceres-solver eigen fuse-constraints fuse-core fuse-graphs fuse-msgs fuse-publishers fuse-variables geometry-msgs message-runtime nav-msgs pluginlib roscpp sensor-msgs std-srvs tf2 tf2-2d tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fuse plugins that implement various kinematic and sensor models'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
