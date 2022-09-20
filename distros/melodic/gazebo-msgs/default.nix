
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-gazebo-msgs";
  version = "2.8.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/melodic/gazebo_msgs/2.8.7-1.tar.gz";
    name = "2.8.7-1.tar.gz";
    sha256 = "65a804640e4e2f3ed6c1f3cc4ba8a3133b61ba1cbd8d1f87b4dae9560009572e";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs std-srvs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message and service data structures for interacting with Gazebo from ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
