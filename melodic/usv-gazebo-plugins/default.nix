
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, gazebo-dev, message-runtime, eigen, std-msgs, roscpp, xacro, wave-gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-usv-gazebo-plugins";
  version = "1.1.1-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/vrx-release/archive/release/melodic/usv_gazebo_plugins/1.1.1-1.tar.gz;
    sha256 = "4a2e30aff5c7dc122588cf8e652b3f604521fac2fbfbfbafffd01009a6869fab";
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
