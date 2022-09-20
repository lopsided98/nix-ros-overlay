
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, rosconsole, roscpp, roslib, rostest }:
buildRosPackage {
  pname = "ros-melodic-filters";
  version = "1.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/filters-release/archive/release/melodic/filters/1.8.3-1.tar.gz";
    name = "1.8.3-1.tar.gz";
    sha256 = "8cd183df34d0c9458e0a3f90d5a1d2885aa9363978347e3e3cfc3d01ec709261";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ pluginlib rosconsole roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This library provides a standardized interface for processing data as a sequence 
    of filters.  This package contains a base class upon which to build specific implementations
    as well as an interface which dynamically loads filters based on runtime parameters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
