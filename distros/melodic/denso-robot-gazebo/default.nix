
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros-control, gazebo-ros-pkgs, joint-state-controller, joint-trajectory-controller }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-gazebo";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/denso_robot_gazebo/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "c7442f7cd0ba21a4ced665b742ba53c22d36ff9a03fa546d1415c969499aa65e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros-control gazebo-ros-pkgs joint-state-controller joint-trajectory-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot gazebo package includes a launch file for simulating DENSO robot.'';
    license = with lib.licenses; [ mit ];
  };
}
