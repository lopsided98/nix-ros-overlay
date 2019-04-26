
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, pr2-msgs, catkin, rospy }:
buildRosPackage {
  pname = "ros-lunar-pr2-dashboard-aggregator";
  version = "1.12.4-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common-release/archive/release/lunar/pr2_dashboard_aggregator/1.12.4-1.tar.gz;
    sha256 = "4bb28abf4543c29e799ab83daa306720274ce99bc0f6b2ae0b7446aefd9c7427";
  };

  propagatedBuildInputs = [ std-msgs pr2-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple script that aggregates all of the topics that a &quot;pr2_dashboard&quot; app might be interested in.'';
    #license = lib.licenses.BSD;
  };
}
