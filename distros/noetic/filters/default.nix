
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, pluginlib, rosconsole, roscpp, roslib, rostest }:
buildRosPackage {
  pname = "ros-noetic-filters";
  version = "1.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/filters-release/archive/release/noetic/filters/1.9.2-1.tar.gz";
    name = "1.9.2-1.tar.gz";
    sha256 = "7cfca50e56f78921bf185fd6dd7d3fe614b2daee6e326a96307776ad3aad8fe6";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ boost pluginlib rosconsole roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This library provides a standardized interface for processing data as a sequence 
    of filters.  This package contains a base class upon which to build specific implementations
    as well as an interface which dynamically loads filters based on runtime parameters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
