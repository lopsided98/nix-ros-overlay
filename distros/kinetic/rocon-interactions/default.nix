
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genpy, pythonPackages, rocon-app-manager-msgs, rocon-bubble-icons, rocon-console, rocon-icons, rocon-interaction-msgs, rocon-python-comms, rocon-python-utils, rocon-std-msgs, rocon-uri, roslint, rospy, rostest, rosunit, std-msgs, unique-id }:
buildRosPackage {
  pname = "ros-kinetic-rocon-interactions";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_interactions/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "40d5fe2c086b4010eb8d9cd47ebe61fe983e7078af9c17bf05a696be5d8f5c09";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.catkin-pkg roslint rostest ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ genpy pythonPackages.rospkg rocon-app-manager-msgs rocon-bubble-icons rocon-console rocon-icons rocon-interaction-msgs rocon-python-comms rocon-python-utils rocon-std-msgs rocon-uri rospy std-msgs unique-id ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interaction management for human interactive agents in the concert.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
