
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, pcl-ros, std-msgs, roscpp, pcl-conversions }:
buildRosPackage {
  pname = "ros-melodic-ouster-driver";
  version = "0.1.6";

  src = fetchurl {
    url = https://github.com/CPFL/ouster-release/archive/release/melodic/ouster_driver/0.1.6-0.tar.gz;
    sha256 = "ce7093225e4cb15e9b2ee1916519cf9e221576f88eceb6e950908470deccb141";
  };

  propagatedBuildInputs = [ message-runtime pcl-ros std-msgs sensor-msgs roscpp pcl-conversions ];
  nativeBuildInputs = [ message-generation catkin pcl-ros std-msgs sensor-msgs roscpp pcl-conversions ];

  meta = {
    description = ''OS1 ROS client'';
    #license = lib.licenses.Apache 2;
  };
}
