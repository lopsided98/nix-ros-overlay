
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, unique-id, roslint, rocon-python-comms, catkin, pythonPackages, rocon-bubble-icons, rocon-app-manager-msgs, genpy, rocon-console, rostest, rocon-icons, rocon-interaction-msgs, rospy, std-msgs, rocon-python-utils, rosunit, rocon-std-msgs, rocon-uri }:
buildRosPackage {
  pname = "ros-melodic-rocon-interactions";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_interactions/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "bbfd5de04fbedd3259af8cc8d03812de838a6a9cc3d38c48772640218cfbe1b7";
  };

  buildType = "catkin";
  buildInputs = [ rostest pythonPackages.catkin-pkg roslint ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ unique-id pythonPackages.rospkg rocon-python-comms rocon-bubble-icons rocon-app-manager-msgs genpy rocon-console rocon-icons rocon-interaction-msgs rospy std-msgs rocon-python-utils rocon-std-msgs rocon-uri ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interaction management for human interactive agents in the concert.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
