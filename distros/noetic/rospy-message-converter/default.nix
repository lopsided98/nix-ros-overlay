
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, python3Packages, roslib, rospy, rosunit, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-rospy-message-converter";
  version = "0.5.6-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/rospy_message_converter-release/archive/release/noetic/rospy_message_converter/0.5.6-1.tar.gz";
    name = "0.5.6-1.tar.gz";
    sha256 = "701b88b355e63656be43cd0a1819d5bc9d1d598b3f238d67e85ed769b13e65de";
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
