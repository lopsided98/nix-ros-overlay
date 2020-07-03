
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, diagnostic-msgs, geographic-msgs, geometry-msgs, geos, gps-common, libyamlcpp, marti-nav-msgs, nodelet, pkg-config, proj, pythonPackages, roscpp, rospy, rostest, sensor-msgs, swri-math-util, swri-nodelet, swri-roscpp, swri-yaml-util, tf, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-swri-transform-util";
  version = "2.13.7-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_transform_util/2.13.7-1.tar.gz";
    name = "2.13.7-1.tar.gz";
    sha256 = "dcd4f16ba41e928781e4548474f328020376cf76b6c8f6871ed1a66909683a33";
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
