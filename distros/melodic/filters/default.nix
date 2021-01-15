
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, rosconsole, roscpp, roslib, rostest }:
buildRosPackage {
  pname = "ros-melodic-filters";
  version = "1.8.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/filters-release/archive/release/melodic/filters/1.8.1-0.tar.gz";
    name = "1.8.1-0.tar.gz";
    sha256 = "850380ab0564923c37a6ee93227fe934647a1c4e5dfb4c5d2502f156b6b17d3f";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ pluginlib rosconsole roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This library provides a standardized interface for processing data as a sequence 
    of filters.  This package contains a base class upon which to build specific implementations
    as well as an interface which dynamically loads filters based on runtime parameters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
