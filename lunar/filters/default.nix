
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, rosconsole, catkin, roscpp, rostest, roslib }:
buildRosPackage {
  pname = "ros-lunar-filters";
  version = "1.8.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/filters-release/archive/release/lunar/filters/1.8.1-0.tar.gz;
    sha256 = "7141ed6aa2c29c2e897a12a1ad77aa77420f29c1803cf73de2e7d8783b8e016c";
  };

  buildInputs = [ rostest roslib rosconsole pluginlib roscpp ];
  propagatedBuildInputs = [ rosconsole roslib pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This library provides a standardized interface for processing data as a sequence 
    of filters.  This package contains a base class upon which to build specific implementations
    as well as an interface which dynamically loads filters based on runtime parameters.'';
    #license = lib.licenses.BSD;
  };
}
