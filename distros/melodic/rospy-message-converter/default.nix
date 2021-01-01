
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pythonPackages, roslib, rospy, rosunit, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-rospy-message-converter";
  version = "0.5.5-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/rospy_message_converter-release/archive/release/melodic/rospy_message_converter/0.5.5-1.tar.gz";
    name = "0.5.5-1.tar.gz";
    sha256 = "051cb5fcc3c00598cf4c225e77bf6a71a14bda79bd90376c305e7a7921eb9dd8";
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
