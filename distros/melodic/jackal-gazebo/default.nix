
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, jackal-control, jackal-description, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-jackal-gazebo";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal_simulator-release/archive/release/melodic/jackal_gazebo/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "8364a4349df4bc2d6bed5c7c2d0e7dc1f1baf5ff6e9669b138ab9a3d785cdcd7";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros-control hector-gazebo-plugins jackal-control jackal-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launchfiles to use Jackal in Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
