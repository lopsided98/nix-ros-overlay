
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roslib, rospy, rosunit, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-rospy-message-converter";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/rospy_message_converter-release/archive/release/kinetic/rospy_message_converter/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "e306f9b91dff3d9d23e1c79fc0e644762ff3593808b1b6dd9dfe3cb3b71c551a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ rosunit std-srvs ];
  propagatedBuildInputs = [ message-runtime roslib rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts between Python dictionaries and JSON to rospy messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
