
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, bcap-core, catkin, denso-robot-core, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-core-test";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/denso_robot_core_test/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "d1fd5baa4315cbeb5b12bb3ccc38f8c6d643af5eaaf3e7abed6dbdb8efb2e532";
  };

  buildType = "catkin";
  buildInputs = [ bcap-core denso-robot-core ];
  propagatedBuildInputs = [ actionlib roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot core test package includes a node for testing denso robot core node.'';
    license = with lib.licenses; [ mit ];
  };
}
