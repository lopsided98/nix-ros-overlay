
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-console, unique-id, rosnode, rosgraph, pythonPackages, catkin, roslib, rosunit, rostopic, genpy, rocon-service-pair-msgs, rospy, rosservice, uuid-msgs, rostest }:
buildRosPackage {
  pname = "ros-kinetic-rocon-python-comms";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_python_comms/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "241eb85920e0822ea5f6bb9911d5dc0cf3ff32c6ccddc5d5acc9e09029d17699";
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
