
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosgraph, rosmon-msgs, rosnode, rospy, rosservice, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-leo-fw";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/melodic/leo_fw/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "e4c46151e1c7234f2888dc20a2bb0b9014931264e0bb1fcea3a89e8505bc1049";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.rospkg pythonPackages.whichcraft rosgraph rosmon-msgs rosnode rospy rosservice std-srvs ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Firmware binary releases and update script for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
