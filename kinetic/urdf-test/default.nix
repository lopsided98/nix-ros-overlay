
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro, rospy }:
buildRosPackage {
  pname = "ros-kinetic-urdf-test";
  version = "1.0.4";

  src = fetchurl {
    url = https://github.com/pal-gbp/urdf_test-release/archive/release/kinetic/urdf_test/1.0.4-0.tar.gz;
    sha256 = "c5a24227ab3bf1cab0873057311cd5c7bb7ab1fc159ee931054316fb6d019ecf";
  };

  buildInputs = [ rospy ];
  propagatedBuildInputs = [ xacro rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The urdf_test package'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
