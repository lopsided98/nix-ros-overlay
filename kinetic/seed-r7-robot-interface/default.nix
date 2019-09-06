
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, seed-r7-typef-moveit-config, roslib, std-msgs, tf, seed-r7-description, seed-smartactuator-sdk }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-robot-interface";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_robot_interface/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "83213dbd0a6a56f4d24e41b4cfb517ad6ecb0d634c8d4274a25004208c2c315b";
  };

  buildType = "catkin";
  buildInputs = [ roscpp seed-r7-typef-moveit-config roslib std-msgs tf seed-r7-description seed-smartactuator-sdk ];
  propagatedBuildInputs = [ roscpp seed-r7-typef-moveit-config roslib std-msgs tf seed-r7-description seed-smartactuator-sdk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_robot_interface package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
