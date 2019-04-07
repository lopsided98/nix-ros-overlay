
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, gazebo-dev, message-runtime, eigen, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-usv-gazebo-plugins";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/vmrc-release/archive/release/kinetic/usv_gazebo_plugins/0.3.2-0.tar.gz;
    sha256 = "e2576c55810615d62f46775856dc94e1e0330ef3bcb2dd44e2ecc2732c479d8d";
  };

  buildInputs = [ gazebo-ros eigen std-msgs roscpp gazebo-dev ];
  propagatedBuildInputs = [ gazebo-ros message-runtime eigen std-msgs roscpp gazebo-dev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo plugins for simulating Unmanned Surface Vehicles
    Originaly copied from https://github.com/bsb808/usv_gazebo_plugins'';
    #license = lib.licenses.Apache 2.0;
  };
}
