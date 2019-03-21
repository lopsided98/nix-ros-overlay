
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, trajectory-msgs, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-gazebo-msgs";
  version = "2.8.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/melodic/gazebo_msgs/2.8.4-0.tar.gz;
    sha256 = "e0b6c175c51d3fcbe4a2c3143a70a3fc6a209c922c811159a2d5b1922db72426";
  };

  propagatedBuildInputs = [ std-srvs message-runtime std-msgs trajectory-msgs sensor-msgs geometry-msgs ];
  nativeBuildInputs = [ std-srvs message-generation std-msgs trajectory-msgs sensor-msgs catkin geometry-msgs ];

  meta = {
    description = ''Message and service data structures for interacting with Gazebo from ROS.'';
    #license = lib.licenses.BSD;
  };
}
