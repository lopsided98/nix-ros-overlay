
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, joint-state-publisher, moose-control, moose-description, robot-localization, robot-state-publisher, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-moose-gazebo";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/moose_simulator-release/archive/release/melodic/moose_gazebo/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "96224ec31a33af8058f47fc9343d99355692fed711835d8b18c1b87cb6ecfc6b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager gazebo-plugins gazebo-ros gazebo-ros-control hector-gazebo-plugins joint-state-publisher moose-control moose-description robot-localization robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files to use Moose in Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
