
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, diagnostic-msgs, genpy, geographic-msgs, geometry-msgs, geos, gps-common, libyamlcpp, marti-nav-msgs, nodelet, pkg-config, proj, pythonPackages, roscpp, rospy, rostest, sensor-msgs, swri-math-util, swri-nodelet, swri-roscpp, swri-yaml-util, tf, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-swri-transform-util";
  version = "2.14.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_transform_util/2.14.2-1.tar.gz";
    name = "2.14.2-1.tar.gz";
    sha256 = "864f2928ed86f68a37eabe4e4992b1192b89dba2a47a2e32c3e3c93aaa9680fb";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost cv-bridge diagnostic-msgs genpy geographic-msgs geometry-msgs geos gps-common libyamlcpp marti-nav-msgs nodelet proj pythonPackages.numpy roscpp rospy sensor-msgs swri-math-util swri-nodelet swri-roscpp swri-yaml-util tf topic-tools ];
  nativeBuildInputs = [ catkin pkg-config pythonPackages.setuptools ];

  meta = {
    description = ''The swri_transform_util package contains utility functions and classes for
     transforming between coordinate frames.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
