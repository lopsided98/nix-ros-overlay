
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, grizzly-description, controller-manager, grizzly-control, hector-gazebo-plugins, catkin, gazebo-plugins, rostopic, roslaunch, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-grizzly-gazebo";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/grizzly_simulator-release/archive/release/kinetic/grizzly_gazebo/0.3.1-0.tar.gz;
    sha256 = "619c3c5231906342603d61d46c6e45e0363f046b56428111c114c5f3cc6b1690";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-ros grizzly-description controller-manager grizzly-control rostopic hector-gazebo-plugins gazebo-ros-control gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Grizzly Simulator bringup'';
    #license = lib.licenses.BSD;
  };
}
