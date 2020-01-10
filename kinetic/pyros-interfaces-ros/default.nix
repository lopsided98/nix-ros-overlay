
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-pip, message-generation, message-runtime, pyros-common, pyros-config, pyros-test, pyros-utils, pyzmp, roslint, rospy, rosservice, rostest, rostopic, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pyros-interfaces-ros";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/asmodehn/pyros-rosinterface-rosrelease/archive/release/kinetic/pyros_interfaces_ros/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "f4a3118390bc6d0fb05ec685bed3218ae1f6976ddf8c0657a95d0749c43de024";
  };

  buildType = "catkin";
  buildInputs = [ catkin-pip message-generation roslint ];
  checkInputs = [ pyros-test rosservice rostest rostopic rosunit ];
  propagatedBuildInputs = [ message-runtime pyros-common pyros-config pyros-utils pyzmp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Dynamic ROS interface for Pyros'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
