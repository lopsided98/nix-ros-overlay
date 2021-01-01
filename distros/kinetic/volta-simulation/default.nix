
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, roslaunch, rostopic, volta-control, volta-description }:
buildRosPackage {
  pname = "ros-kinetic-volta-simulation";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta_simulation-release/archive/release/kinetic/volta_simulation/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "2c4374afcd54f3ab8fe9509296998c352e1c24a57dcb147b9eb73d4f1c35dcc5";
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
