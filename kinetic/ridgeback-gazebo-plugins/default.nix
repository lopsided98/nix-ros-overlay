
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, std-srvs, tf, catkin, gazeboSimulator, nav-msgs, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ridgeback-gazebo-plugins";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback_simulator-release/archive/release/kinetic/ridgeback_gazebo_plugins/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "3746b4ede1648b98626218f1d27932e56fd0dae79730ca4d61a34166c6f82845";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs roscpp nav-msgs std-msgs tf gazeboSimulator.gazebo7 geometry-msgs ];
  propagatedBuildInputs = [ gazebo-ros gazeboSimulator.gazebo roscpp nav-msgs message-runtime std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A fork of hector_gazebo_plugins to provide the ros_force_based_move plugin.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
