
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dingo-control, dingo-description, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, ridgeback-gazebo-plugins, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-dingo-gazebo";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo_simulator-release/archive/release/noetic/dingo_gazebo/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "7b35e2a11f815c324bb1b6c9cbd9fab92f97c6f13602c1350080683b489b90c3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ dingo-control dingo-description gazebo-plugins gazebo-ros gazebo-ros-control hector-gazebo-plugins ridgeback-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launchfiles to use Dingo in Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
