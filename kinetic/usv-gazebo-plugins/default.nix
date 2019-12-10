
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, gazebo-dev, gazebo-ros, message-runtime, roscpp, std-msgs, wave-gazebo-plugins, xacro }:
buildRosPackage {
  pname = "ros-kinetic-usv-gazebo-plugins";
  version = "1.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/kinetic/usv_gazebo_plugins/1.2.6-1.tar.gz";
    name = "1.2.6-1.tar.gz";
    sha256 = "6192d089df8ca25e678faf71b5c7f095c890bdc3c4092a746446f31f56719f35";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen gazebo-dev gazebo-ros message-runtime roscpp std-msgs wave-gazebo-plugins xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo plugins for simulating Unmanned Surface Vehicles
    Originaly copied from https://github.com/bsb808/usv_gazebo_plugins'';
    license = with lib.licenses; [ asl20 ];
  };
}
