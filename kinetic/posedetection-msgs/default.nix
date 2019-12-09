
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, message-filters, geometry-msgs, std-msgs, catkin, cv-bridge, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-posedetection-msgs";
  version = "4.3.1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/kinetic/posedetection_msgs/4.3.1-0.tar.gz";
    name = "4.3.1-0.tar.gz";
    sha256 = "049d55fae694d1e3d4a63450b71cc99a3205dd807303b173616ce6fdc8ea90b5";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters geometry-msgs std-msgs cv-bridge roscpp message-generation ];
  propagatedBuildInputs = [ sensor-msgs message-filters geometry-msgs std-msgs cv-bridge roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''posedetection_msgs provides messages and services to facilitate passing pose detection results and features.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
