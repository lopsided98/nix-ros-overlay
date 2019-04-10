
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, pr2-msgs, catkin, rospy }:
buildRosPackage {
  pname = "ros-lunar-pr2-dashboard-aggregator";
  version = "1.12.2";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common-release/archive/release/lunar/pr2_dashboard_aggregator/1.12.2-0.tar.gz;
    sha256 = "9d5771ee03600eb5bc512b208380962e6287d3f053ecd399c4f8e40e1e613771";
  };

  propagatedBuildInputs = [ std-msgs pr2-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple script that aggregates all of the topics that a &quot;pr2_dashboard&quot; app might be interested in.'';
    #license = lib.licenses.BSD;
  };
}
