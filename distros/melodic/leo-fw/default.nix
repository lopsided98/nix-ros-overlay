
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosgraph, rosmon-msgs, rosnode, rospy, rosservice, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-leo-fw";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/melodic/leo_fw/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "e84e089592de9956b8973bffb8c6bdcf0810be819be2f4b3a7f218f35d37418c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.rospkg pythonPackages.whichcraft rosgraph rosmon-msgs rosnode rospy rosservice std-srvs ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Firmware binary releases and update script for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
