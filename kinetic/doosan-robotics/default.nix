
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, dsr-control, dsr-description, dsr-example-cpp, dsr-example-py, dsr-gazebo, dsr-launcher, dsr-msgs, effort-controllers, gazebo-ros-control, interactive-marker-twist-server, lms1xx, moveit-commander, moveit-config-m0609, moveit-config-m0617, moveit-config-m1013, moveit-config-m1509, moveit-core, moveit-experimental, moveit-kinematics, moveit-setup-assistant, position-controllers, robot-localization, twist-mux }:
buildRosPackage {
  pname = "ros-kinetic-doosan-robotics";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/doosan-robotics/doosan-robot-release/archive/release/kinetic/doosan_robotics/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "cc2cd045c24827927321f163967b91896498397b313ba80aff9ec0b104d10c36";
  };

  buildType = "catkin";
  buildInputs = [ controller-manager effort-controllers gazebo-ros-control interactive-marker-twist-server lms1xx moveit-commander moveit-core moveit-experimental moveit-kinematics moveit-setup-assistant position-controllers robot-localization twist-mux ];
  propagatedBuildInputs = [ dsr-control dsr-description dsr-example-cpp dsr-example-py dsr-gazebo dsr-launcher dsr-msgs moveit-config-m0609 moveit-config-m0617 moveit-config-m1013 moveit-config-m1509 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The doosan_robotics metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
