
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, joint-state-publisher, moose-control, moose-description, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-moose-gazebo";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/moose_simulator-release/archive/release/kinetic/moose_gazebo/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "59e9f8a45c108639d37f988195feaa86fd9f21567645c65d5a21711d2307e244";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros-control hector-gazebo-plugins joint-state-publisher moose-control moose-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files to use Moose in Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
