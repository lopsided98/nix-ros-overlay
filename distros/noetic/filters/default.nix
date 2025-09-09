
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, pluginlib, rosconsole, roscpp, roslib, rostest }:
buildRosPackage {
  pname = "ros-noetic-filters";
  version = "1.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/filters-release/archive/release/noetic/filters/1.9.3-1.tar.gz";
    name = "1.9.3-1.tar.gz";
    sha256 = "7c1bd71c345ebb62b97501f49e89682b798dcc9a639b47f3fbe0a42446675969";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ boost pluginlib rosconsole roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This library provides a standardized interface for processing data as a sequence 
    of filters.  This package contains a base class upon which to build specific implementations
    as well as an interface which dynamically loads filters based on runtime parameters.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
