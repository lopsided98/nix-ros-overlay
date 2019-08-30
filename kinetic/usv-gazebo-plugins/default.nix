
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, gazebo-dev, message-runtime, eigen, std-msgs, roscpp, xacro, wave-gazebo-plugins }:
buildRosPackage {
  pname = "ros-kinetic-usv-gazebo-plugins";
  version = "1.2.0-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/vrx-release/archive/release/kinetic/usv_gazebo_plugins/1.2.0-1.tar.gz;
    sha256 = "3bd614a2f4d5f0b0f2303ee8f40a45dca6e60e9cc2e3ee04ac9507499a1ee135";
  };

  buildInputs = [ gazebo-ros gazebo-dev eigen std-msgs roscpp xacro wave-gazebo-plugins ];
  propagatedBuildInputs = [ gazebo-ros gazebo-dev message-runtime eigen std-msgs roscpp xacro wave-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo plugins for simulating Unmanned Surface Vehicles
    Originaly copied from https://github.com/bsb808/usv_gazebo_plugins'';
    license = with lib.licenses; [ asl20 ];
  };
}
