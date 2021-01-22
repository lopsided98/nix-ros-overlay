
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-ros, gazebo_7, geometry-msgs, message-runtime, nav-msgs, roscpp, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-kinetic-ridgeback-gazebo-plugins";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback_simulator-release/archive/release/kinetic/ridgeback_gazebo_plugins/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "b47b9ce60ff7a47f232a256045db4cd6207bb523651f19828e0b19162d59c109";
  };

  buildType = "catkin";
  buildInputs = [ gazebo_7 std-srvs ];
  propagatedBuildInputs = [ gazebo gazebo-ros geometry-msgs message-runtime nav-msgs roscpp std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A fork of hector_gazebo_plugins to provide the ros_force_based_move plugin.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
