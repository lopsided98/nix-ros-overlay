
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, gazebo-ros, gazebo-ros-control, nextage-description, nextage-moveit-config, ros-controllers, rostest }:
buildRosPackage {
  pname = "ros-melodic-nextage-gazebo";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_nextage-release/archive/release/melodic/nextage_gazebo/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "b380d62da2f4ef14a1c1495b6e2d6df800382f5a0991bac4e61c88ae71dda04f";
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
