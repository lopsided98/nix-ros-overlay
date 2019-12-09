
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ridgeback-control, hector-gazebo-plugins, ridgeback-description, catkin, ridgeback-gazebo-plugins, gazebo-ros-control, gazebo-ros, roslaunch, gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-ridgeback-gazebo";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback_simulator-release/archive/release/melodic/ridgeback_gazebo/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "566ee423e7937ce8e5d92f7d12151a0fe4d5b11aa903d5d738522a65ac1ccb0c";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ ridgeback-control hector-gazebo-plugins ridgeback-description ridgeback-gazebo-plugins gazebo-ros-control gazebo-ros gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launchfiles to use Ridgeback in Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
