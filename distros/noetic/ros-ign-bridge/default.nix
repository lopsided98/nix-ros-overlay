
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, ignition, message-generation, message-runtime, nav-msgs, rosconsole, roscpp, rosgraph-msgs, rostest, sensor-msgs, std-msgs, std-srvs, tf2-msgs }:
buildRosPackage {
  pname = "ros-noetic-ros-ign-bridge";
  version = "0.111.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_ign-release/archive/release/noetic/ros_ign_bridge/0.111.0-1.tar.gz";
    name = "0.111.0-1.tar.gz";
    sha256 = "4fe215b92ebb32ae9b97f25fb6f615643c989990e8feb91972365cb5b5cbf613";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ geometry-msgs ignition.msgs5 ignition.transport8 message-runtime nav-msgs rosconsole roscpp rosgraph-msgs sensor-msgs std-msgs std-srvs tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bridge communication between ROS and Ignition Transport'';
    license = with lib.licenses; [ asl20 ];
  };
}
