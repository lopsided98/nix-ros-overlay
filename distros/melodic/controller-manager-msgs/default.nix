
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy, rosservice, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-controller-manager-msgs";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/controller_manager_msgs/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "9955c3f8207bc629e72fb7739b308f008f076eb2b6062a347a3f9c172fe6889f";
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
