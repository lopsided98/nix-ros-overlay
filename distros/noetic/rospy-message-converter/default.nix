
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, python3Packages, roslib, rospy, rosunit, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-rospy-message-converter";
  version = "0.5.5-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/rospy_message_converter-release/archive/release/noetic/rospy_message_converter/0.5.5-1.tar.gz";
    name = "0.5.5-1.tar.gz";
    sha256 = "e9be4a0711b9268d8c7f3c875d2fbb1d787aaa43f7907e08e4204dcbb9a178ba";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ python3Packages.numpy rosunit std-srvs ];
  propagatedBuildInputs = [ message-runtime roslib rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts between Python dictionaries and JSON to rospy messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
