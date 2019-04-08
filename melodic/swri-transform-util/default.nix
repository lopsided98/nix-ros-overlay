
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, swri-yaml-util, rospy, diagnostic-msgs, geos, tf, geometry-msgs, boost, swri-nodelet, pkg-config, gps-common, swri-math-util, catkin, proj, roscpp, nodelet, libyamlcpp, sensor-msgs, geographic-msgs, swri-roscpp, rostest, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-swri-transform-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_transform_util/2.8.0-0.tar.gz;
    sha256 = "f6532904852bb800d11213f89b6503213a9d7b2f1e3d138755ada636c0209bb5";
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
