
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-ros, gazebo_7, geometry-msgs, message-runtime, nav-msgs, roscpp, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-kinetic-ridgeback-gazebo-plugins";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback_simulator-release/archive/release/kinetic/ridgeback_gazebo_plugins/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "3746b4ede1648b98626218f1d27932e56fd0dae79730ca4d61a34166c6f82845";
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
