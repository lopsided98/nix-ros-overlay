
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, actionlib-msgs, boost, catkin, roscpp, roscpp-serialization, actionlib, std-msgs, rostime, geometry-msgs, calibration-msgs }:
buildRosPackage {
  pname = "ros-melodic-interval-intersection";
  version = "0.10.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/calibration-release/archive/release/melodic/interval_intersection/0.10.14-0.tar.gz;
    sha256 = "4466aa2fd48b25d0fa963f756b1ed3c5bb4bcba29d9dc1fc6d392d2dfe4685a5";
  };

  propagatedBuildInputs = [ rosconsole boost actionlib-msgs roscpp roscpp-serialization actionlib std-msgs rostime geometry-msgs calibration-msgs ];
  nativeBuildInputs = [ rosconsole boost actionlib-msgs catkin roscpp roscpp-serialization actionlib std-msgs rostime geometry-msgs calibration-msgs ];

  meta = {
    description = ''Tools for calculating the intersection of interval messages coming
    in on several topics. This package is experimental and unstable.
    Expect its APIs to change.'';
    #license = lib.licenses.BSD;
  };
}
