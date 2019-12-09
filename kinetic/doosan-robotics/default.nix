
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, effort-controllers, dsr-example-py, controller-manager, dsr-description, moveit-commander, dsr-msgs, twist-mux, interactive-marker-twist-server, moveit-config-m1013, moveit-config-m0617, dsr-gazebo, position-controllers, gazebo-ros-control, moveit-core, moveit-setup-assistant, moveit-config-m1509, catkin, moveit-experimental, dsr-example-cpp, robot-localization, moveit-kinematics, lms1xx, moveit-config-m0609, dsr-control, dsr-launcher }:
buildRosPackage {
  pname = "ros-kinetic-doosan-robotics";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/doosan-robotics/doosan-robot-release/archive/release/kinetic/doosan_robotics/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "cc2cd045c24827927321f163967b91896498397b313ba80aff9ec0b104d10c36";
  };

  buildType = "catkin";
  buildInputs = [ effort-controllers moveit-core controller-manager moveit-commander moveit-setup-assistant position-controllers twist-mux interactive-marker-twist-server moveit-experimental robot-localization gazebo-ros-control moveit-kinematics lms1xx ];
  propagatedBuildInputs = [ moveit-config-m0609 dsr-example-py moveit-config-m0617 dsr-description dsr-gazebo moveit-config-m1509 dsr-msgs moveit-config-m1013 dsr-example-cpp dsr-control dsr-launcher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The doosan_robotics metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
