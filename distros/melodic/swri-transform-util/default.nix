
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, diagnostic-msgs, geographic-msgs, geometry-msgs, geos, gps-common, libyamlcpp, marti-nav-msgs, nodelet, pkg-config, proj, roscpp, rospy, rostest, sensor-msgs, swri-math-util, swri-nodelet, swri-roscpp, swri-yaml-util, tf, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-swri-transform-util";
  version = "2.13.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_transform_util/2.13.1-1.tar.gz";
    name = "2.13.1-1.tar.gz";
    sha256 = "bdb88203ae05828e87217d313a4f03fa3a598386232f3d7a85f34eb4fb896676";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost cv-bridge diagnostic-msgs geographic-msgs geometry-msgs geos gps-common libyamlcpp marti-nav-msgs nodelet proj roscpp rospy sensor-msgs swri-math-util swri-nodelet swri-roscpp swri-yaml-util tf topic-tools ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''The swri_transform_util package contains utility functions and classes for
     transforming between coordinate frames.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
