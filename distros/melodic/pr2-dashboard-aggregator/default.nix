
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-msgs, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-dashboard-aggregator";
  version = "1.12.4-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common-release/archive/release/melodic/pr2_dashboard_aggregator/1.12.4-1.tar.gz";
    name = "1.12.4-1.tar.gz";
    sha256 = "59e2885baab0aae9d693d4fc6b659a37b4f88ea3331f3e9c38c2e9cc22878576";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-msgs rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple script that aggregates all of the topics that a &quot;pr2_dashboard&quot; app might be interested in.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
