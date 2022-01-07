
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, costmap-2d, eigen, geometry-msgs, nav-msgs, roscpp, roslib, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-steering-functions";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/steering_functions-release/archive/release/noetic/steering_functions/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "b5c609ae4d3cc7ac00530c7ef805d9cc9f0313dd3b3be10dca6cf8481ceb052e";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ costmap-2d eigen geometry-msgs nav-msgs roscpp roslib tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The steering_functions package'';
    license = with lib.licenses; [ asl20 ];
  };
}
