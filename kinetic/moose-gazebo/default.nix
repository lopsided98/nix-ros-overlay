
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, joint-state-publisher, moose-control, moose-description, robot-localization, robot-state-publisher, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-moose-gazebo";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/moose_simulator-release/archive/release/kinetic/moose_gazebo/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "27d9485bdc8bce089b4a97341c7885f08a4c5939fdd3cf5eeee97c1a5b130487";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager gazebo-plugins gazebo-ros gazebo-ros-control hector-gazebo-plugins joint-state-publisher moose-control moose-description robot-localization robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files to use Moose in Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
