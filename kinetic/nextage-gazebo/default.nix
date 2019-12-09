
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nextage-moveit-config, catkin, nextage-description, ros-controllers, gazebo-ros-control, gazebo-ros, rostest, gazebo-plugins }:
buildRosPackage {
  pname = "ros-kinetic-nextage-gazebo";
  version = "0.8.5-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_nextage-release/archive/release/kinetic/nextage_gazebo/0.8.5-1.tar.gz";
    name = "0.8.5-1.tar.gz";
    sha256 = "f398d760a58e559f1ebc4143cfcf85ccafbde2859f0810b79802e72a78a5addd";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ nextage-moveit-config ros-controllers gazebo-ros-control nextage-description gazebo-ros gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo simulation for NEXTAGE Open'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
