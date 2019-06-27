
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, swri-yaml-util, rospy, diagnostic-msgs, geos, tf, geometry-msgs, boost, swri-nodelet, pkg-config, gps-common, swri-math-util, catkin, proj, roscpp, nodelet, libyamlcpp, sensor-msgs, geographic-msgs, swri-roscpp, rostest, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-swri-transform-util";
  version = "2.9.0-r1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_transform_util/2.9.0-1.tar.gz;
    sha256 = "c7d2224695478d5f4b913607874f6cc975845779d64cb6c901e912fcfa2d62dc";
  };

  buildInputs = [ swri-math-util boost libyamlcpp swri-nodelet topic-tools cv-bridge roscpp geographic-msgs gps-common proj swri-roscpp swri-yaml-util rospy diagnostic-msgs nodelet geos tf geometry-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ cv-bridge swri-yaml-util rospy diagnostic-msgs geos tf geometry-msgs boost swri-nodelet gps-common swri-math-util proj roscpp nodelet libyamlcpp sensor-msgs geographic-msgs swri-roscpp topic-tools ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''The swri_transform_util package contains utility functions and classes for
     transforming between coordinate frames.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
