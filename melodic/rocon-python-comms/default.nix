
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-console, unique-id, rosnode, rosgraph, pythonPackages, catkin, roslib, rosunit, rostopic, genpy, rocon-service-pair-msgs, rospy, rosservice, uuid-msgs, rostest }:
buildRosPackage {
  pname = "ros-melodic-rocon-python-comms";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_python_comms/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "9592f4282b01f537108ca98200116db495421ad1d7da6c63016e315229a37394";
  };

  buildType = "catkin";
  buildInputs = [ rostest pythonPackages.catkin-pkg ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ pythonPackages.pyyaml rocon-console unique-id rosnode rosgraph roslib rostopic genpy rocon-service-pair-msgs rospy rosservice uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Service pair libraries for pub/sub non-blocking services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
