
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, message-generation, message-runtime, roscpp, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-l3cam-ros";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/beamaginelidar/l3cam_ros-release/archive/release/noetic/l3cam_ros/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "5d906d34c1e563866f728227906b169a7af6ab1bebca73abee977a82381ac2c2";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure message-runtime roscpp rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Camera driver for Beamagine's L3Cam, based on the libL3Cam library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
