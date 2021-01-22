
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-msgs, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-dashboard-aggregator";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common-release/archive/release/noetic/pr2_dashboard_aggregator/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "ea1f2d0927c5831bc32f9c39bc68e1fb3b6aa8806bdfcdb5b49e9d65a4b684de";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-msgs rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple script that aggregates all of the topics that a &quot;pr2_dashboard&quot; app might be interested in.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
