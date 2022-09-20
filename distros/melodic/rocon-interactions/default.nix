
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genpy, pythonPackages, rocon-app-manager-msgs, rocon-bubble-icons, rocon-console, rocon-icons, rocon-interaction-msgs, rocon-python-comms, rocon-python-utils, rocon-std-msgs, rocon-uri, roslint, rospy, rostest, rosunit, std-msgs, unique-id }:
buildRosPackage {
  pname = "ros-melodic-rocon-interactions";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_interactions/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "bbfd5de04fbedd3259af8cc8d03812de838a6a9cc3d38c48772640218cfbe1b7";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.catkin-pkg roslint rostest ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ genpy pythonPackages.rospkg rocon-app-manager-msgs rocon-bubble-icons rocon-console rocon-icons rocon-interaction-msgs rocon-python-comms rocon-python-utils rocon-std-msgs rocon-uri rospy std-msgs unique-id ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interaction management for human interactive agents in the concert.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
