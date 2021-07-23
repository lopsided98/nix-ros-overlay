
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, ignition, message-generation, message-runtime, nav-msgs, rosconsole, roscpp, rosgraph-msgs, rostest, sensor-msgs, std-msgs, std-srvs, tf2-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-ros-ign-bridge";
  version = "0.111.1-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_ign-release/archive/release/noetic/ros_ign_bridge/0.111.1-2.tar.gz";
    name = "0.111.1-2.tar.gz";
    sha256 = "a5b27966c6d1f327aa12e551ac9ef8c87f0c9ab8f3c9f1ea4891ff2ffe62ecda";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ geometry-msgs ignition.msgs5 ignition.transport8 message-runtime nav-msgs rosconsole roscpp rosgraph-msgs sensor-msgs std-msgs std-srvs tf2-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bridge communication between ROS and Ignition Transport'';
    license = with lib.licenses; [ asl20 ];
  };
}
