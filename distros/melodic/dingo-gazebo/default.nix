
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dingo-control, dingo-description, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, ridgeback-gazebo-plugins, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-dingo-gazebo";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo_simulator-release/archive/release/melodic/dingo_gazebo/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "fa86b9d84e6fdf5acd6654b58e57c061f661b15038eeeb79d5f4a2890064f39f";
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
