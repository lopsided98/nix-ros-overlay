
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pythonPackages, roslib, rospy, rosunit, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-rospy-message-converter";
  version = "0.5.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/rospy_message_converter-release/archive/release/melodic/rospy_message_converter/0.5.4-1.tar.gz";
    name = "0.5.4-1.tar.gz";
    sha256 = "02ab2ca86f2b1ef188676a3c5d2133813f883b0f0fc43d90a27785e3200a7b20";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ pythonPackages.numpy rosunit std-srvs ];
  propagatedBuildInputs = [ message-runtime roslib rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts between Python dictionaries and JSON to rospy messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
