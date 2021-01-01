
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, gazebo-dev, gazebo-ros, message-runtime, roscpp, std-msgs, wave-gazebo-plugins, xacro }:
buildRosPackage {
  pname = "ros-kinetic-usv-gazebo-plugins";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/kinetic/usv_gazebo_plugins/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "27d1b4d5ba680b6e583e8c6c0d1cc152dad7c58bd31842426f3265c4802d260e";
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
