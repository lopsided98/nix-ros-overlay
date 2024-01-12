
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, diagnostic-msgs, genpy, geographic-msgs, geometry-msgs, geos, gps-common, marti-nav-msgs, nodelet, pkg-config, proj, python3Packages, roscpp, rospy, rostest, sensor-msgs, swri-math-util, swri-nodelet, swri-roscpp, swri-yaml-util, tf, topic-tools, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-swri-transform-util";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_transform_util/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "b13f9b412a95b3f02362ff166edbb3dcb90ddc1582d49de1962b1de983b526ee";
  };

  buildType = "catkin";
  buildInputs = [ catkin pkg-config python3Packages.setuptools ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost cv-bridge diagnostic-msgs genpy geographic-msgs geometry-msgs geos gps-common marti-nav-msgs nodelet proj python3Packages.numpy roscpp rospy sensor-msgs swri-math-util swri-nodelet swri-roscpp swri-yaml-util tf topic-tools yaml-cpp ];
  nativeBuildInputs = [ catkin pkg-config python3Packages.setuptools ];

  meta = {
    description = ''The swri_transform_util package contains utility functions and classes for
     transforming between coordinate frames.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
