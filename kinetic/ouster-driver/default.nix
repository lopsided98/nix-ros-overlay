
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, pcl-ros, std-msgs, roscpp, pcl-conversions }:
buildRosPackage {
  pname = "ros-kinetic-ouster-driver";
  version = "0.1.7";

  src = fetchurl {
    url = https://github.com/CPFL/ouster-release/archive/release/kinetic/ouster_driver/0.1.7-0.tar.gz;
    sha256 = "6696f1152949ac3729d2b7be7b3f03f835d783cb3866c0664d4d5770a19ea1c1";
  };

  buildInputs = [ message-generation pcl-ros std-msgs sensor-msgs roscpp pcl-conversions ];
  propagatedBuildInputs = [ message-runtime pcl-ros std-msgs sensor-msgs roscpp pcl-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OS1 ROS client'';
    #license = lib.licenses.Apache 2;
  };
}
