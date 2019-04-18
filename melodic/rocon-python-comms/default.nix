
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, unique-id, catkin, pythonPackages, rosservice, uuid-msgs, rocon-console, rostest, rocon-service-pair-msgs, rosgraph, rostopic, roslib, rospy, genpy, rosunit, rosnode }:
buildRosPackage {
  pname = "ros-melodic-rocon-python-comms";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_python_comms/0.3.2-0.tar.gz;
    sha256 = "9592f4282b01f537108ca98200116db495421ad1d7da6c63016e315229a37394";
  };

  buildInputs = [ rostest pythonPackages.catkin-pkg ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ unique-id genpy rosservice pythonPackages.pyyaml uuid-msgs rocon-console rocon-service-pair-msgs rosgraph rostopic rospy roslib rosnode ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Service pair libraries for pub/sub non-blocking services.'';
    #license = lib.licenses.BSD;
  };
}
