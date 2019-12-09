
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-bubble-icons, rocon-python-comms, rocon-interaction-msgs, unique-id, rocon-console, std-msgs, pythonPackages, rocon-icons, rocon-python-utils, rosunit, catkin, rocon-app-manager-msgs, roslint, genpy, rocon-std-msgs, rocon-uri, rospy, rostest }:
buildRosPackage {
  pname = "ros-kinetic-rocon-interactions";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_interactions/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "40d5fe2c086b4010eb8d9cd47ebe61fe983e7078af9c17bf05a696be5d8f5c09";
  };

  buildType = "catkin";
  buildInputs = [ rostest pythonPackages.catkin-pkg roslint ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ rocon-console rocon-interaction-msgs unique-id rocon-python-comms std-msgs pythonPackages.rospkg rocon-icons rocon-app-manager-msgs rocon-python-utils genpy rocon-std-msgs rocon-uri rospy rocon-bubble-icons ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interaction management for human interactive agents in the concert.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
