
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, std-msgs, catkin, rostopic, rosunit, roslint, rospy, message-runtime, rostest }:
buildRosPackage {
  pname = "ros-kinetic-pyros-test";
  version = "0.0.6";

  src = fetchurl {
    url = "https://github.com/asmodehn/pyros-test-release/archive/release/kinetic/pyros_test/0.0.6-0.tar.gz";
    name = "0.0.6-0.tar.gz";
    sha256 = "444457ae977f51ce614ae2070ad538db95cdcf165c0745a7e2bdcf26d8e84c76";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs rospy message-generation roslint ];
  checkInputs = [ rostest rostopic rosunit ];
  propagatedBuildInputs = [ std-msgs rospy message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic test nodes for Pyros dynamic ROS interface'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
