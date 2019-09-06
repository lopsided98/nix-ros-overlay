
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, catkin, message-generation, message-runtime, rospy, std-msgs, roslib, rosunit }:
buildRosPackage {
  pname = "ros-melodic-rospy-message-converter";
  version = "0.5.0";

  src = fetchurl {
    url = "https://github.com/uos-gbp/rospy_message_converter-release/archive/release/melodic/rospy_message_converter/0.5.0-0.tar.gz";
    name = "0.5.0-0.tar.gz";
    sha256 = "c35584b4ef0c7fed1e90a35bfeb17ad63ec36a9a86ba1aaf74547cdcbd1cea37";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation ];
  checkInputs = [ std-srvs rosunit ];
  propagatedBuildInputs = [ std-msgs roslib message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts between Python dictionaries and JSON to rospy messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
