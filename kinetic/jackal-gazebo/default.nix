
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jackal-control, jackal-description, hector-gazebo-plugins, catkin, gazebo-ros-control, gazebo-ros, roslaunch, gazebo-plugins }:
buildRosPackage {
  pname = "ros-kinetic-jackal-gazebo";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal_simulator-release/archive/release/kinetic/jackal_gazebo/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "64556e62a587c25fa3afcf3aa67eeba763d0ec233fa8d5db3e922e3621587c6b";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ jackal-control jackal-description hector-gazebo-plugins gazebo-ros-control gazebo-ros gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launchfiles to use Jackal in Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
