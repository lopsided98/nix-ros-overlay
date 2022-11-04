
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genpy, pythonPackages, rocon-console, rocon-service-pair-msgs, rosgraph, roslib, rosnode, rospy, rosservice, rostest, rostopic, rosunit, unique-id, uuid-msgs }:
buildRosPackage {
  pname = "ros-melodic-rocon-python-comms";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_python_comms/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "9592f4282b01f537108ca98200116db495421ad1d7da6c63016e315229a37394";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.catkin-pkg rostest ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ genpy pythonPackages.pyyaml rocon-console rocon-service-pair-msgs rosgraph roslib rosnode rospy rosservice rostopic unique-id uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Service pair libraries for pub/sub non-blocking services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
