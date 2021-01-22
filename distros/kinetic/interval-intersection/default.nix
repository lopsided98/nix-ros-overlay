
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, boost, calibration-msgs, catkin, geometry-msgs, rosconsole, roscpp, roscpp-serialization, rostime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-interval-intersection";
  version = "0.10.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/kinetic/interval_intersection/0.10.14-0.tar.gz";
    name = "0.10.14-0.tar.gz";
    sha256 = "1f6b8720392d6300d2980977a8cef0aa50dc837cc346ec56c117829fa98ba2fb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs boost calibration-msgs geometry-msgs rosconsole roscpp roscpp-serialization rostime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools for calculating the intersection of interval messages coming
    in on several topics. This package is experimental and unstable.
    Expect its APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
