
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jackal-control, jackal-description, hector-gazebo-plugins, catkin, gazebo-ros-control, gazebo-ros, roslaunch, gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-jackal-gazebo";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal_simulator-release/archive/release/melodic/jackal_gazebo/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "db2847baf2697abcf028c25bead148a173d13c5720be43386ed27c4a385f8931";
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
