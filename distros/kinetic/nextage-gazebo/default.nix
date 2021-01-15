
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, gazebo-ros, gazebo-ros-control, nextage-description, nextage-moveit-config, ros-controllers, rostest }:
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
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros-control nextage-description nextage-moveit-config ros-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo simulation for NEXTAGE Open'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
