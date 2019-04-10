
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, actionlib-msgs, boost, catkin, roscpp, roscpp-serialization, actionlib, std-msgs, rostime, geometry-msgs, calibration-msgs }:
buildRosPackage {
  pname = "ros-lunar-interval-intersection";
  version = "0.10.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/calibration-release/archive/release/lunar/interval_intersection/0.10.14-0.tar.gz;
    sha256 = "ec2641c5ee7fc47f91e42816c7a1bc09eb4d6bf9d508bcae8993ece963f6261b";
  };

  buildInputs = [ rosconsole boost actionlib-msgs roscpp roscpp-serialization actionlib std-msgs rostime geometry-msgs calibration-msgs ];
  propagatedBuildInputs = [ rosconsole boost actionlib-msgs roscpp roscpp-serialization actionlib std-msgs rostime geometry-msgs calibration-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools for calculating the intersection of interval messages coming
    in on several topics. This package is experimental and unstable.
    Expect its APIs to change.'';
    #license = lib.licenses.BSD;
  };
}
