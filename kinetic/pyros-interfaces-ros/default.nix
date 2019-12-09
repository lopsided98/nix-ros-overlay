
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, std-msgs, catkin, pyros-utils, pyros-config, rosunit, pyros-test, rostopic, roslint, pyzmp, catkin-pip, rospy, message-generation, rosservice, rostest, pyros-common }:
buildRosPackage {
  pname = "ros-kinetic-pyros-interfaces-ros";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/asmodehn/pyros-rosinterface-rosrelease/archive/release/kinetic/pyros_interfaces_ros/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "f4a3118390bc6d0fb05ec685bed3218ae1f6976ddf8c0657a95d0749c43de024";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs pyros-config pyros-utils roslint pyzmp catkin-pip rospy message-generation pyros-common ];
  checkInputs = [ pyros-test rostopic rosunit rosservice rostest ];
  propagatedBuildInputs = [ std-msgs pyros-config pyros-utils pyzmp rospy message-runtime pyros-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Dynamic ROS interface for Pyros'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
