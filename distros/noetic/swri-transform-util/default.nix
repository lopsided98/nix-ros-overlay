
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, diagnostic-msgs, geographic-msgs, geometry-msgs, geos, gps-common, libyamlcpp, marti-nav-msgs, nodelet, pkg-config, proj, pythonPackages, roscpp, rospy, rostest, sensor-msgs, swri-math-util, swri-nodelet, swri-roscpp, swri-yaml-util, tf, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-swri-transform-util";
  version = "2.13.5-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_transform_util/2.13.5-1.tar.gz";
    name = "2.13.5-1.tar.gz";
    sha256 = "831822878a7f6c37633e1b70844e5617a6a291d1d6cd5f41af77526e43655b29";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost cv-bridge diagnostic-msgs geographic-msgs geometry-msgs geos gps-common libyamlcpp marti-nav-msgs nodelet proj roscpp rospy sensor-msgs swri-math-util swri-nodelet swri-roscpp swri-yaml-util tf topic-tools ];
  nativeBuildInputs = [ catkin pkg-config pythonPackages.setuptools ];

  meta = {
    description = ''The swri_transform_util package contains utility functions and classes for
     transforming between coordinate frames.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
