
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, roslaunch, rostopic, volta-control, volta-description }:
buildRosPackage {
  pname = "ros-melodic-volta-simulation";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta_simulation-release/archive/release/melodic/volta_simulation/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "8126b5fdde3ce3c0f6e97f42566702758c22d5a27cf20cd9a450af90869b4d7f";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager gazebo-plugins gazebo-ros gazebo-ros-control hector-gazebo-plugins rostopic volta-control volta-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_simulation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
