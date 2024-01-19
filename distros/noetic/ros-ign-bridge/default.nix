
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, ignition, message-generation, message-runtime, nav-msgs, rosconsole, roscpp, rosgraph-msgs, rostest, sensor-msgs, std-msgs, std-srvs, tf2-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-ros-ign-bridge";
  version = "0.111.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_ign-release/archive/release/noetic/ros_ign_bridge/0.111.2-1.tar.gz";
    name = "0.111.2-1.tar.gz";
    sha256 = "e6eb7f2b2aec26fdcd2b60161ce7d7363d533b16fda2fea3358f81703dde7bc5";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ geometry-msgs ignition.msgs5 ignition.transport8 message-runtime nav-msgs rosconsole roscpp rosgraph-msgs sensor-msgs std-msgs std-srvs tf2-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bridge communication between ROS and Ignition Transport'';
    license = with lib.licenses; [ asl20 ];
  };
}
