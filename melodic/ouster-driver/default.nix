
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, pcl-ros, std-msgs, roscpp, pcl-conversions }:
buildRosPackage {
  pname = "ros-melodic-ouster-driver";
  version = "0.1.7";

  src = fetchurl {
    url = https://github.com/CPFL/ouster-release/archive/release/melodic/ouster_driver/0.1.7-0.tar.gz;
    sha256 = "7f68cc7f16bf51c84ddf73d6db82c8352089ee1da21d2e6b1da177ce3697a950";
  };

  propagatedBuildInputs = [ message-runtime pcl-ros std-msgs sensor-msgs roscpp pcl-conversions ];
  nativeBuildInputs = [ message-generation catkin pcl-ros std-msgs sensor-msgs roscpp pcl-conversions ];

  meta = {
    description = ''OS1 ROS client'';
    #license = lib.licenses.Apache 2;
  };
}
