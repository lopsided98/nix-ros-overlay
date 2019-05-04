
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, nextage-moveit-config, catkin, gazebo-plugins, rostest, nextage-description, gazebo-ros-control, ros-controllers }:
buildRosPackage {
  pname = "ros-kinetic-nextage-gazebo";
  version = "0.8.4";

  src = fetchurl {
    url = https://github.com/tork-a/rtmros_nextage-release/archive/release/kinetic/nextage_gazebo/0.8.4-0.tar.gz;
    sha256 = "ae28bd62c3891633fb668a7d268b02b39c98c414b7a84f81759e4d5061c02205";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ gazebo-ros nextage-moveit-config gazebo-plugins nextage-description gazebo-ros-control ros-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo simulation for NEXTAGE Open'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
