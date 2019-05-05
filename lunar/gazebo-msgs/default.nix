
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, trajectory-msgs, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-gazebo-msgs";
  version = "2.7.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/lunar/gazebo_msgs/2.7.6-0.tar.gz;
    sha256 = "b2882b174264d9a0aeb07854359344f107e8b5bbe19aea46169476efb60db108";
  };

  buildInputs = [ std-srvs trajectory-msgs sensor-msgs message-generation std-msgs geometry-msgs ];
  propagatedBuildInputs = [ std-srvs trajectory-msgs sensor-msgs message-runtime std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message and service data structures for interacting with Gazebo from ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
