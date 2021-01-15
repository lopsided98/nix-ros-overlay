
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genpy, pythonPackages, rocon-console, rocon-service-pair-msgs, rosgraph, roslib, rosnode, rospy, rosservice, rostest, rostopic, rosunit, unique-id, uuid-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rocon-python-comms";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_python_comms/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "241eb85920e0822ea5f6bb9911d5dc0cf3ff32c6ccddc5d5acc9e09029d17699";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.catkin-pkg rostest ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ genpy pythonPackages.pyyaml rocon-console rocon-service-pair-msgs rosgraph roslib rosnode rospy rosservice rostopic unique-id uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Service pair libraries for pub/sub non-blocking services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
