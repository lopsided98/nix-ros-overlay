
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, hector-gazebo-plugins, catkin, jackal-control, gazebo-plugins, roslaunch, gazebo-ros-control, jackal-description }:
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
  propagatedBuildInputs = [ gazebo-ros hector-gazebo-plugins jackal-control gazebo-plugins gazebo-ros-control jackal-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launchfiles to use Jackal in Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
