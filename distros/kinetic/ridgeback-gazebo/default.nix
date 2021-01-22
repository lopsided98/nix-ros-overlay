
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, ridgeback-control, ridgeback-description, ridgeback-gazebo-plugins, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-ridgeback-gazebo";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback_simulator-release/archive/release/kinetic/ridgeback_gazebo/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "1763ea31823f0ae07e68f2b9e00771e07bc5942368d1947d33cf43b4d42fa3dc";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros-control hector-gazebo-plugins ridgeback-control ridgeback-description ridgeback-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launchfiles to use Ridgeback in Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
