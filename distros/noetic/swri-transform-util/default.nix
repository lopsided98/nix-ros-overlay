
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, diagnostic-msgs, genpy, geographic-msgs, geometry-msgs, geos, gps-common, libyamlcpp, marti-nav-msgs, nodelet, pkg-config, proj, python3Packages, roscpp, rospy, rostest, sensor-msgs, swri-math-util, swri-nodelet, swri-roscpp, swri-yaml-util, tf, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-swri-transform-util";
  version = "2.14.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_transform_util/2.14.2-1.tar.gz";
    name = "2.14.2-1.tar.gz";
    sha256 = "c2d80f11a288947a3dc8b177fc07b44ce1dac224ca948c597bb230893ad6952c";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost cv-bridge diagnostic-msgs genpy geographic-msgs geometry-msgs geos gps-common libyamlcpp marti-nav-msgs nodelet proj python3Packages.numpy roscpp rospy sensor-msgs swri-math-util swri-nodelet swri-roscpp swri-yaml-util tf topic-tools ];
  nativeBuildInputs = [ catkin pkg-config python3Packages.setuptools ];

  meta = {
    description = ''The swri_transform_util package contains utility functions and classes for
     transforming between coordinate frames.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
