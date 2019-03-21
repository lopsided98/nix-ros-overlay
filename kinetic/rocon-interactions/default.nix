
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, unique-id, roslint, rocon-python-comms, catkin, pythonPackages, rocon-bubble-icons, rocon-app-manager-msgs, rocon-console, rocon-interaction-msgs, rocon-icons, rostest, rocon-python-utils, rospy, std-msgs, genpy, rosunit, rocon-std-msgs, rocon-uri }:
buildRosPackage {
  pname = "ros-kinetic-rocon-interactions";
  version = "0.3.2-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_interactions/0.3.2-1.tar.gz;
    sha256 = "40d5fe2c086b4010eb8d9cd47ebe61fe983e7078af9c17bf05a696be5d8f5c09";
  };

  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ unique-id pythonPackages.rospkg rocon-python-comms rocon-bubble-icons rocon-app-manager-msgs genpy rocon-interaction-msgs rocon-icons rocon-console rospy std-msgs rocon-python-utils rocon-std-msgs rocon-uri ];
  nativeBuildInputs = [ rostest pythonPackages.catkin-pkg catkin roslint ];

  meta = {
    description = ''Interaction management for human interactive agents in the concert.'';
    #license = lib.licenses.BSD;
  };
}
