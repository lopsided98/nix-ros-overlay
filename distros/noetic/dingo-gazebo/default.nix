
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dingo-control, dingo-description, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, ridgeback-gazebo-plugins, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-dingo-gazebo";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo_simulator-release/archive/release/noetic/dingo_gazebo/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "cf3dfd02314f6ea170a6280d44f7b228f440911cdc0589d6f9a3e2275de78f7e";
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
