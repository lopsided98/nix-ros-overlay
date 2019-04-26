
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-kinematics, dsr-example-py, robot-localization, position-controllers, lms1xx, interactive-marker-twist-server, moveit-experimental, moveit-config-m0617, dsr-launcher, moveit-core, moveit-config-m0609, dsr-control, catkin, dsr-gazebo, moveit-commander, dsr-description, controller-manager, twist-mux, dsr-msgs, moveit-config-m1013, dsr-example-cpp, moveit-config-m1509, effort-controllers, gazebo-ros-control, moveit-setup-assistant }:
buildRosPackage {
  pname = "ros-kinetic-doosan-robotics";
  version = "0.9.6-r1";

  src = fetchurl {
    url = https://github.com/doosan-robotics/doosan-robot-release/archive/release/kinetic/doosan_robotics/0.9.6-1.tar.gz;
    sha256 = "cc2cd045c24827927321f163967b91896498397b313ba80aff9ec0b104d10c36";
  };

  buildInputs = [ controller-manager moveit-experimental twist-mux moveit-kinematics effort-controllers robot-localization position-controllers lms1xx moveit-core moveit-commander interactive-marker-twist-server gazebo-ros-control moveit-setup-assistant ];
  propagatedBuildInputs = [ dsr-msgs dsr-control moveit-config-m1013 moveit-config-m0617 dsr-gazebo dsr-example-cpp dsr-example-py moveit-config-m1509 dsr-launcher moveit-config-m0609 dsr-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The doosan_robotics metapackage'';
    #license = lib.licenses.BSD;
  };
}
