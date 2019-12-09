
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, message-generation, sensor-msgs, std-msgs, catkin, pcl-conversions, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-ouster-driver";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/CPFL/ouster-release/archive/release/kinetic/ouster_driver/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "6696f1152949ac3729d2b7be7b3f03f835d783cb3866c0664d4d5770a19ea1c1";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs std-msgs pcl-conversions roscpp message-generation ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs std-msgs pcl-conversions roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OS1 ROS client'';
    license = with lib.licenses; [ asl20 ];
  };
}
