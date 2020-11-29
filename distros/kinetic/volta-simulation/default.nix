
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, roslaunch, rostopic, volta-control, volta-description }:
buildRosPackage {
  pname = "ros-kinetic-volta-simulation";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta_simulation-release/archive/release/kinetic/volta_simulation/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "ffb4f2163533e065538ec9755a3360318c923bd6710008ff59688fa39e045142";
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
