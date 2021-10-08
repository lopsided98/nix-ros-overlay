
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosgraph, rosmon-msgs, rosnode, rospy, rosservice, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-leo-fw";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/noetic/leo_fw/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "ea6d85b60e0fc3cba87c02afb908effaac46f6fe1353744a6e670b27e56eaacd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python3Packages.rospkg python3Packages.whichcraft rosgraph rosmon-msgs rosnode rospy rosservice std-srvs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Firmware binary releases and update script for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
