
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, denso-robot-core, catkin, bcap-core, actionlib, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-denso-robot-core-test";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/kinetic/denso_robot_core_test/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "073f4c18f619371ce9e88255c61de8477ae6c653dabee7c1a5b15f1d031e86a1";
  };

  buildType = "catkin";
  buildInputs = [ denso-robot-core bcap-core actionlib std-msgs roscpp ];
  propagatedBuildInputs = [ std-msgs roscpp actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot core test package includes a node for testing denso robot core node.'';
    license = with lib.licenses; [ mit ];
  };
}
