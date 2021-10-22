
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, rosconsole, roscpp, roslib, rostest }:
buildRosPackage {
  pname = "ros-melodic-filters";
  version = "1.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/filters-release/archive/release/melodic/filters/1.8.2-1.tar.gz";
    name = "1.8.2-1.tar.gz";
    sha256 = "b88bbcf6eb05e6297b7026ce3e6ab28bf80612b7f4059519e8c01f12fb1ac794";
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
