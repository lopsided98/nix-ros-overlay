
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, denso-robot-descriptions, gazebo-ros-control, gazebo-ros-pkgs, joint-state-controller, joint-trajectory-controller, robot-state-publisher }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-gazebo";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/denso_robot_gazebo/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "4c2912036f7f078cb9f716fd008e61c41d6e58885517f601e426928b46fcb5d1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ denso-robot-descriptions gazebo-ros-control gazebo-ros-pkgs joint-state-controller joint-trajectory-controller robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot gazebo package includes a launch file for simulating DENSO robot.'';
    license = with lib.licenses; [ mit ];
  };
}
