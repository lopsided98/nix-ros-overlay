
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, cv-bridge, message-filters, catkin, message-generation, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-posedetection-msgs";
  version = "4.3.1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common_msgs-release/archive/release/kinetic/posedetection_msgs/4.3.1-0.tar.gz;
    sha256 = "049d55fae694d1e3d4a63450b71cc99a3205dd807303b173616ce6fdc8ea90b5";
  };

  buildInputs = [ message-generation geometry-msgs std-msgs sensor-msgs cv-bridge message-filters roscpp ];
  propagatedBuildInputs = [ message-runtime geometry-msgs std-msgs sensor-msgs cv-bridge message-filters roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''posedetection_msgs provides messages and services to facilitate passing pose detection results and features.'';
    #license = lib.licenses.BSD;
  };
}
