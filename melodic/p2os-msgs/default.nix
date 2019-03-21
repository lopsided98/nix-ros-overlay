
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-p2os-msgs";
  version = "2.2.0";

  src = fetchurl {
    url = https://github.com/allenh1/p2os-release/archive/release/melodic/p2os_msgs/2.2.0-0.tar.gz;
    sha256 = "5b432d606b32711ddfe1d72505a2e81386c33b5cd82c2bd1a34605f2980ca5d7";
  };

  propagatedBuildInputs = [ std-msgs message-generation message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''Defines the messages that are used to communicate with the
    p2os_driver package and the ROS infrastructure.'';
    #license = lib.licenses.BSD;
  };
}
