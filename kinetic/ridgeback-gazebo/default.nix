
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, ridgeback-control, ridgeback-description, ridgeback-gazebo-plugins, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-ridgeback-gazebo";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback_simulator-release/archive/release/kinetic/ridgeback_gazebo/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "5c40ad99149fb2e2c8847afac406a8d21dfefc99f2749bc9a6d3b4005645d2f4";
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
