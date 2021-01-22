
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pcl-conversions, pcl-ros, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ouster-driver";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/CPFL/ouster-release/archive/release/kinetic/ouster_driver/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "6696f1152949ac3729d2b7be7b3f03f835d783cb3866c0664d4d5770a19ea1c1";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime pcl-conversions pcl-ros roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OS1 ROS client'';
    license = with lib.licenses; [ asl20 ];
  };
}
