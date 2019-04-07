
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-p2os-msgs";
  version = "2.1.1-r3";

  src = fetchurl {
    url = https://github.com/allenh1/p2os-release/archive/release/melodic/p2os_msgs/2.1.1-3.tar.gz;
    sha256 = "03bd75df3567d74a4b0e3357d73ae5cf4085fc772aa1c65e36078f4afb566b9f";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-generation message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Defines the messages that are used to communicate with the
    p2os_driver package and the ROS infrastructure.'';
    #license = lib.licenses.BSD;
  };
}
