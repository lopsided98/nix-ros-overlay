
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-ros, gazebo_11, geometry-msgs, message-runtime, nav-msgs, roscpp, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-ridgeback-gazebo-plugins";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback_simulator-release/archive/release/noetic/ridgeback_gazebo_plugins/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "34434c0c65333845d3fb851b854443a1a23972cdbb0c3220f24b9878255db19d";
  };

  buildType = "catkin";
  buildInputs = [ catkin gazebo_11 std-srvs ];
  propagatedBuildInputs = [ gazebo gazebo-ros geometry-msgs message-runtime nav-msgs roscpp std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A fork of hector_gazebo_plugins to provide the ros_force_based_move plugin.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
