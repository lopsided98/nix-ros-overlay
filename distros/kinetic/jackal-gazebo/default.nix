
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, jackal-control, jackal-description, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-jackal-gazebo";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal_simulator-release/archive/release/kinetic/jackal_gazebo/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "098aefbfcc1edb9074280c640545d976a251a75efed6e1b8445eb605602efd8f";
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
