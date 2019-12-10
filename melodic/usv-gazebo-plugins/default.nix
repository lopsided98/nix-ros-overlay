
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, gazebo-dev, gazebo-ros, message-runtime, roscpp, std-msgs, wave-gazebo-plugins, xacro }:
buildRosPackage {
  pname = "ros-melodic-usv-gazebo-plugins";
  version = "1.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/melodic/usv_gazebo_plugins/1.2.6-1.tar.gz";
    name = "1.2.6-1.tar.gz";
    sha256 = "58313c1a2661211d5df57f609b4e7a3ab81a75d17ff91cbdba4bebb651431b3e";
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
