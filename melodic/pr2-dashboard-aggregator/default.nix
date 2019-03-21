
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, pr2-msgs, catkin, rospy }:
buildRosPackage {
  pname = "ros-melodic-pr2-dashboard-aggregator";
  version = "1.12.3";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common-release/archive/release/melodic/pr2_dashboard_aggregator/1.12.3-0.tar.gz;
    sha256 = "50c10a982c9d7fe6b1d6f64f73bcdaa207b5a8f76ddd867ff146114e1ba020c4";
  };

  propagatedBuildInputs = [ std-msgs pr2-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple script that aggregates all of the topics that a &quot;pr2_dashboard&quot; app might be interested in.'';
    #license = lib.licenses.BSD;
  };
}
