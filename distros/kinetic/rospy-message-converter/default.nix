
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pythonPackages, roslib, rospy, rosunit, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-rospy-message-converter";
  version = "0.5.6-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/rospy_message_converter-release/archive/release/kinetic/rospy_message_converter/0.5.6-1.tar.gz";
    name = "0.5.6-1.tar.gz";
    sha256 = "d2507792b1bac78c3ddee65d92bf6301a4f329a338a5a80acfcc8dcaab357489";
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
