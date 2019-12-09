
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, message-generation, geometry-msgs, std-msgs, std-srvs, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-gazebo-msgs";
  version = "2.8.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/melodic/gazebo_msgs/2.8.4-0.tar.gz";
    name = "2.8.4-0.tar.gz";
    sha256 = "e0b6c175c51d3fcbe4a2c3143a70a3fc6a209c922c811159a2d5b1922db72426";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs sensor-msgs geometry-msgs std-msgs std-srvs message-generation ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs geometry-msgs std-msgs std-srvs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message and service data structures for interacting with Gazebo from ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
