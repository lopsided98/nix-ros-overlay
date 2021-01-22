
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, pluginlib, rosconsole, roscpp, roslib, rostest }:
buildRosPackage {
  pname = "ros-noetic-filters";
  version = "1.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/filters-release/archive/release/noetic/filters/1.9.1-1.tar.gz";
    name = "1.9.1-1.tar.gz";
    sha256 = "a8a2088bfcc4b02644c20627bdc445b36443fc4c2c5c1a9f7e0ce8dc4764bb11";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ boost pluginlib rosconsole roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This library provides a standardized interface for processing data as a sequence 
    of filters.  This package contains a base class upon which to build specific implementations
    as well as an interface which dynamically loads filters based on runtime parameters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
