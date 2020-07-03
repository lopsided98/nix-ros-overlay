
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, gazebo-ros, gazebo-ros-control, nextage-description, nextage-moveit-config, ros-controllers, rostest }:
buildRosPackage {
  pname = "ros-melodic-nextage-gazebo";
  version = "0.8.6-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_nextage-release/archive/release/melodic/nextage_gazebo/0.8.6-2.tar.gz";
    name = "0.8.6-2.tar.gz";
    sha256 = "4dacb42e09770b860820cebba3aec0d2b3015de683d62b373179b43cf177ba44";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros-control nextage-description nextage-moveit-config ros-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo simulation for NEXTAGE Open'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
