
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roslint, rospy, rostest, rostopic, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pyros-test";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/pyros-dev/pyros-test-release/archive/release/melodic/pyros_test/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "9f1c355999d96debda08aa9cc999dade80d4c8ba9de137fabd122eb9050c35ea";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation roslint ];
  checkInputs = [ rostest rostopic rosunit ];
  propagatedBuildInputs = [ message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic test nodes for Pyros dynamic ROS interface'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
