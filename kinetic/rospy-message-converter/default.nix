
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, std-msgs, std-srvs, catkin, roslib, rosunit, rospy, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-rospy-message-converter";
  version = "0.5.0";

  src = fetchurl {
    url = "https://github.com/uos-gbp/rospy_message_converter-release/archive/release/kinetic/rospy_message_converter/0.5.0-0.tar.gz";
    name = "0.5.0-0.tar.gz";
    sha256 = "48bcd73deec2aa72e1065a58c04e45c4fc1313c48992483a68deb872eddcbd55";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation ];
  checkInputs = [ std-srvs rosunit ];
  propagatedBuildInputs = [ std-msgs message-runtime roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts between Python dictionaries and JSON to rospy messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
