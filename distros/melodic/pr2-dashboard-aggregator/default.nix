
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-msgs, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-dashboard-aggregator";
  version = "1.13.1-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common-release/archive/release/melodic/pr2_dashboard_aggregator/1.13.1-1.tar.gz";
    name = "1.13.1-1.tar.gz";
    sha256 = "33e0d27029cd93024bf4ef3834a9d782f710206c87fd9e72e6b671618864df51";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-msgs rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple script that aggregates all of the topics that a &quot;pr2_dashboard&quot; app might be interested in.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
