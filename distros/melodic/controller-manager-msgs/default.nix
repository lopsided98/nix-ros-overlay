
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy, rosservice, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-controller-manager-msgs";
  version = "0.18.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/controller_manager_msgs/0.18.3-1.tar.gz";
    name = "0.18.3-1.tar.gz";
    sha256 = "49d27abb925026460ddd92ea2c19ab19609b7dc031a2c94be3cfa23b8e7d9b9c";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime rospy rosservice std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages and services for the controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
