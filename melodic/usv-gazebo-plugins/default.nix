
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, gazebo-dev, message-runtime, eigen, std-msgs, roscpp, xacro, wave-gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-usv-gazebo-plugins";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/melodic/usv_gazebo_plugins/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "1435aac7a036c1039401de06da039e4ec866e86832e2de0cc20a9c754a62e68d";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-ros gazebo-dev eigen std-msgs roscpp xacro wave-gazebo-plugins ];
  propagatedBuildInputs = [ gazebo-ros gazebo-dev message-runtime eigen std-msgs roscpp xacro wave-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo plugins for simulating Unmanned Surface Vehicles
    Originaly copied from https://github.com/bsb808/usv_gazebo_plugins'';
    license = with lib.licenses; [ asl20 ];
  };
}
