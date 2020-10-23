
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, python3Packages, roslib, rospy, rosunit, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-rospy-message-converter";
  version = "0.5.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/rospy_message_converter-release/archive/release/noetic/rospy_message_converter/0.5.4-1.tar.gz";
    name = "0.5.4-1.tar.gz";
    sha256 = "4f25539887d9b7f6ae1b0c5fdf836d08fc9a4f741b9a4687f374ff9560494852";
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
