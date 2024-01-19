
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, costmap-2d, eigen, geometry-msgs, nav-msgs, roscpp, roslib, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-steering-functions";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/steering_functions-release/archive/release/noetic/steering_functions/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "2a652f09d03ada9a6959f635e36563705c6e3447b809a154f377206197493cc4";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ costmap-2d eigen geometry-msgs nav-msgs roscpp roslib tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The steering_functions package'';
    license = with lib.licenses; [ asl20 ];
  };
}
