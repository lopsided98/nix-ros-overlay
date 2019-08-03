
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, gazebo-dev, message-runtime, eigen, std-msgs, roscpp, xacro, wave-gazebo-plugins }:
buildRosPackage {
  pname = "ros-kinetic-usv-gazebo-plugins";
  version = "1.1.2-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/vrx-release/archive/release/kinetic/usv_gazebo_plugins/1.1.2-1.tar.gz;
    sha256 = "b5790141af1a9b8d834c282ff0095ad6ecf7151b829dbb57ef21c98cb0c3377e";
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
