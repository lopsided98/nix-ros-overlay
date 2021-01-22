
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, joint-state-publisher, moose-control, moose-description, robot-localization, robot-state-publisher, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-moose-gazebo";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/moose_simulator-release/archive/release/kinetic/moose_gazebo/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "4b8d9f55942f930be4fd02f13ac1ed8c325d7258732ec1f86fab8f8e88369896";
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
