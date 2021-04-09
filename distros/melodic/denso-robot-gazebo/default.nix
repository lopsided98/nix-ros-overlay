
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros-control, gazebo-ros-pkgs, joint-state-controller, joint-trajectory-controller }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-gazebo";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/denso_robot_gazebo/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "582a7e77c309ccd7fae05a4e1202de1e398813d41d93c1774579c5a319129673";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros-control gazebo-ros-pkgs joint-state-controller joint-trajectory-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot gazebo package includes a launch file for simulating DENSO robot.'';
    license = with lib.licenses; [ mit ];
  };
}
