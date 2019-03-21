
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, gazebo-dev, message-runtime, eigen, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-usv-gazebo-plugins";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/vrx-release/archive/release/melodic/usv_gazebo_plugins/1.0.1-0.tar.gz;
    sha256 = "61bbed37ef07cd02e27f6710063400a17b259523bbe721a0f657120b3a3c11ad";
  };

  propagatedBuildInputs = [ gazebo-ros message-runtime eigen std-msgs roscpp gazebo-dev ];
  nativeBuildInputs = [ gazebo-ros eigen std-msgs catkin roscpp gazebo-dev ];

  meta = {
    description = ''Gazebo plugins for simulating Unmanned Surface Vehicles
    Originaly copied from https://github.com/bsb808/usv_gazebo_plugins'';
    #license = lib.licenses.Apache 2.0;
  };
}
