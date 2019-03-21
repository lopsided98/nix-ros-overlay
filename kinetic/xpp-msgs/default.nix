
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-xpp-msgs";
  version = "1.0.8";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/kinetic/xpp_msgs/1.0.8-0.tar.gz;
    sha256 = "cca6ae6fbc8f7073d507c2c7c7529389bcbc174aff00d155e377f7b4c1c44be2";
  };

  propagatedBuildInputs = [ message-generation message-runtime std-msgs sensor-msgs geometry-msgs ];
  nativeBuildInputs = [ message-generation message-runtime std-msgs sensor-msgs catkin geometry-msgs ];

  meta = {
    description = ''ROS messages used in the XPP framework.'';
    #license = lib.licenses.BSD;
  };
}
