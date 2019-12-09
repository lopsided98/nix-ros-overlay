
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazeboSimulator, geometry-msgs, std-msgs, std-srvs, tf, catkin, roscpp, gazebo-ros, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ridgeback-gazebo-plugins";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback_simulator-release/archive/release/kinetic/ridgeback_gazebo_plugins/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "3746b4ede1648b98626218f1d27932e56fd0dae79730ca4d61a34166c6f82845";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs std-msgs std-srvs tf gazeboSimulator.gazebo7 roscpp nav-msgs ];
  propagatedBuildInputs = [ geometry-msgs std-msgs gazeboSimulator.gazebo tf roscpp gazebo-ros message-runtime nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A fork of hector_gazebo_plugins to provide the ros_force_based_move plugin.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
