
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pythonPackages, roslib, rospy, rosunit, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-rospy-message-converter";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/rospy_message_converter-release/archive/release/melodic/rospy_message_converter/0.5.9-1.tar.gz";
    name = "0.5.9-1.tar.gz";
    sha256 = "87f060cdd07e2216fbda60ba3f5c3a55b8e4d202a4faeedb6dc9ea71caf546c9";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ pythonPackages.numpy rosunit std-srvs ];
  propagatedBuildInputs = [ message-runtime roslib rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts between Python dictionaries and JSON to rospy messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
