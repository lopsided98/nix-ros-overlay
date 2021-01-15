
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosgraph, rosmon-msgs, rosnode, rospy, rosservice, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-leo-fw";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/melodic/leo_fw/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "670b9fb62599c7f02cdf4b10e0a98aafc0da1231a6da823e8d5e80df22aad563";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.rospkg pythonPackages.whichcraft rosgraph rosmon-msgs rosnode rospy rosservice std-srvs ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Firmware binary releases and update script for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
