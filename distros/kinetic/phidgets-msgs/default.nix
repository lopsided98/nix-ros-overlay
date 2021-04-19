
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-phidgets-msgs";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/phidgets_msgs/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "09a7742d6897fbb79e5ccc7887f8ee8b8b7dbe43ef50c70ca994f00409db6f4b";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Custom ROS messages for Phidgets drivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
