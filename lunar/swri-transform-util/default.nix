
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, swri-yaml-util, rospy, diagnostic-msgs, geos, tf, geometry-msgs, boost, swri-nodelet, pkg-config, gps-common, swri-math-util, catkin, proj, roscpp, nodelet, libyamlcpp, sensor-msgs, geographic-msgs, swri-roscpp, rostest, topic-tools }:
buildRosPackage {
  pname = "ros-lunar-swri-transform-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/lunar/swri_transform_util/2.8.0-0.tar.gz;
    sha256 = "503e389d1e0225d03b39d3891e3a46d11d8bc692d0f65824ad46da88e56108c1";
  };

  buildInputs = [ swri-math-util boost libyamlcpp swri-nodelet topic-tools cv-bridge roscpp geographic-msgs gps-common proj swri-roscpp swri-yaml-util rospy diagnostic-msgs nodelet geos tf geometry-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ swri-math-util cv-bridge proj swri-yaml-util rospy diagnostic-msgs geos roscpp nodelet tf geometry-msgs boost libyamlcpp sensor-msgs swri-nodelet geographic-msgs gps-common swri-roscpp topic-tools ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''The swri_transform_util package contains utility functions and classes for
     transforming between coordinate frames.'';
    #license = lib.licenses.BSD;
  };
}
