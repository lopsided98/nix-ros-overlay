
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-plugins, gazebo-ros, gazebo-ros-control, grizzly-control, grizzly-description, hector-gazebo-plugins, roslaunch, rostopic }:
buildRosPackage {
  pname = "ros-kinetic-grizzly-gazebo";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/grizzly_simulator-release/archive/release/kinetic/grizzly_gazebo/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "619c3c5231906342603d61d46c6e45e0363f046b56428111c114c5f3cc6b1690";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager gazebo-plugins gazebo-ros gazebo-ros-control grizzly-control grizzly-description hector-gazebo-plugins rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Grizzly Simulator bringup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
