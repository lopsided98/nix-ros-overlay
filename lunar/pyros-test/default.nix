
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, catkin, rostest, message-generation, rostopic, message-runtime, rospy, std-msgs, rosunit }:
buildRosPackage {
  pname = "ros-lunar-pyros-test";
  version = "0.0.6-r1";

  src = fetchurl {
    url = https://github.com/pyros-dev/pyros-test-release/archive/release/lunar/pyros_test/0.0.6-1.tar.gz;
    sha256 = "ac0c1b21b4f9dba37e5c0d0cb16692c5b51b02123ecc9a068696da3380eb5872";
  };

  buildInputs = [ std-msgs message-generation roslint rospy ];
  checkInputs = [ rostest rosunit rostopic ];
  propagatedBuildInputs = [ std-msgs message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic test nodes for Pyros dynamic ROS interface'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
