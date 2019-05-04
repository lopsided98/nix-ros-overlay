
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, unique-id, catkin, pythonPackages, rosservice, uuid-msgs, rocon-console, rostest, rocon-service-pair-msgs, rosgraph, rostopic, roslib, rospy, genpy, rosunit, rosnode }:
buildRosPackage {
  pname = "ros-kinetic-rocon-python-comms";
  version = "0.3.2-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_python_comms/0.3.2-1.tar.gz;
    sha256 = "241eb85920e0822ea5f6bb9911d5dc0cf3ff32c6ccddc5d5acc9e09029d17699";
  };

  buildInputs = [ rostest pythonPackages.catkin-pkg ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ unique-id genpy rosservice pythonPackages.pyyaml uuid-msgs rocon-console rocon-service-pair-msgs rosgraph rostopic rospy roslib rosnode ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Service pair libraries for pub/sub non-blocking services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
