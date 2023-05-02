
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dingo-control, dingo-description, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, ridgeback-gazebo-plugins, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-dingo-gazebo";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo_simulator-release/archive/release/noetic/dingo_gazebo/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "b63a571d75030a17ee122d792496aabb629ebdd2466afea7273238995857d19d";
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
