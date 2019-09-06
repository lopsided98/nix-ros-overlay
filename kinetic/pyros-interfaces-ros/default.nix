
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pyros-common, roslint, catkin-pip, catkin, pyros-config, rosservice, pyros-test, rostest, std-msgs, message-generation, rostopic, message-runtime, pyros-utils, rospy, rosunit, pyzmp }:
buildRosPackage {
  pname = "ros-kinetic-pyros-interfaces-ros";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/asmodehn/pyros-rosinterface-rosrelease/archive/release/kinetic/pyros_interfaces_ros/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "f4a3118390bc6d0fb05ec685bed3218ae1f6976ddf8c0657a95d0749c43de024";
  };

  buildType = "catkin";
  buildInputs = [ pyros-common roslint catkin-pip pyros-config rospy message-generation pyros-utils std-msgs pyzmp ];
  checkInputs = [ rosservice rostest rostopic pyros-test rosunit ];
  propagatedBuildInputs = [ pyros-common pyros-config pyros-utils message-runtime rospy std-msgs pyzmp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Dynamic ROS interface for Pyros'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
