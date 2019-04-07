
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, ridgeback-control, hector-gazebo-plugins, catkin, gazebo-plugins, ridgeback-gazebo-plugins, roslaunch, ridgeback-description, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-ridgeback-gazebo";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/ridgeback_simulator-release/archive/release/kinetic/ridgeback_gazebo/0.0.3-0.tar.gz;
    sha256 = "5c40ad99149fb2e2c8847afac406a8d21dfefc99f2749bc9a6d3b4005645d2f4";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-ros ridgeback-gazebo-plugins ridgeback-control hector-gazebo-plugins ridgeback-description gazebo-ros-control gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launchfiles to use Ridgeback in Gazebo.'';
    #license = lib.licenses.BSD;
  };
}
