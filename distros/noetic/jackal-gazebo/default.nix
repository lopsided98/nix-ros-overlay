
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, jackal-control, jackal-description, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-jackal-gazebo";
  version = "0.4.0-r4";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal_simulator-release/archive/release/noetic/jackal_gazebo/0.4.0-4.tar.gz";
    name = "0.4.0-4.tar.gz";
    sha256 = "369ad6b2cc59e75584868ff62bfdaee8317835ae9d8629637dc65ad182ad4413";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros-control hector-gazebo-plugins jackal-control jackal-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launchfiles to use Jackal in Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
