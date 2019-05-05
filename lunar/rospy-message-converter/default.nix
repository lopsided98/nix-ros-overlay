
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, catkin, message-generation, message-runtime, rospy, std-msgs, roslib, rosunit }:
buildRosPackage {
  pname = "ros-lunar-rospy-message-converter";
  version = "0.5.0";

  src = fetchurl {
    url = https://github.com/uos-gbp/rospy_message_converter-release/archive/release/lunar/rospy_message_converter/0.5.0-0.tar.gz;
    sha256 = "b8744ae8aa87fa7867ffaf78c93edd6d41f9efc110284a61c74189048305674f";
  };

  buildInputs = [ std-msgs message-generation ];
  checkInputs = [ std-srvs rosunit ];
  propagatedBuildInputs = [ std-msgs roslib message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts between Python dictionaries and JSON to rospy messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
