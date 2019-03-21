
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, pr2-msgs, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-pr2-dashboard-aggregator";
  version = "1.12.2";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common-release/archive/release/kinetic/pr2_dashboard_aggregator/1.12.2-0.tar.gz;
    sha256 = "99c53f7c77595a452804ae50a64c19dca593392c80e234acecb378d75111e6c0";
  };

  propagatedBuildInputs = [ std-msgs pr2-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple script that aggregates all of the topics that a &quot;pr2_dashboard&quot; app might be interested in.'';
    #license = lib.licenses.BSD;
  };
}
