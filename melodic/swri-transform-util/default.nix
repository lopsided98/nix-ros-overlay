
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, tf, marti-nav-msgs, nodelet, rostest, sensor-msgs, diagnostic-msgs, libyamlcpp, geographic-msgs, swri-yaml-util, gps-common, geos, proj, catkin, swri-nodelet, cv-bridge, roscpp, pkg-config, topic-tools, rospy, swri-roscpp, boost, swri-math-util }:
buildRosPackage {
  pname = "ros-melodic-swri-transform-util";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_transform_util/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "ebaabbfaabf614c73bc7b88f89563ac62954d6262fdbcdc900eebbd67d601427";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs tf marti-nav-msgs nodelet diagnostic-msgs libyamlcpp geographic-msgs swri-yaml-util geos gps-common proj swri-nodelet cv-bridge roscpp topic-tools rospy swri-roscpp boost swri-math-util ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ geometry-msgs tf marti-nav-msgs nodelet sensor-msgs diagnostic-msgs libyamlcpp geographic-msgs swri-yaml-util geos gps-common proj swri-nodelet cv-bridge roscpp topic-tools rospy swri-roscpp boost swri-math-util ];
  nativeBuildInputs = [ pkg-config catkin ];

  meta = {
    description = ''The swri_transform_util package contains utility functions and classes for
     transforming between coordinate frames.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
