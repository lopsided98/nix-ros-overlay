
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazeboSimulator, geometry-msgs, std-msgs, std-srvs, tf, catkin, roscpp, gazebo-ros, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-ridgeback-gazebo-plugins";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback_simulator-release/archive/release/melodic/ridgeback_gazebo_plugins/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "c6665eb82ca56eb83bbd0f1ffa8b410b4d90e7d6bfb3a92023d7d86265266c87";
  };

  buildType = "catkin";
  buildInputs = [ gazeboSimulator.gazebo9 geometry-msgs std-msgs std-srvs tf roscpp nav-msgs ];
  propagatedBuildInputs = [ geometry-msgs std-msgs gazeboSimulator.gazebo tf roscpp gazebo-ros message-runtime nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A fork of hector_gazebo_plugins to provide the ros_force_based_move plugin.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
