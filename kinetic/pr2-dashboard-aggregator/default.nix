
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, pr2-msgs, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-pr2-dashboard-aggregator";
  version = "1.12.4-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common-release/archive/release/kinetic/pr2_dashboard_aggregator/1.12.4-1.tar.gz";
    name = "1.12.4-1.tar.gz";
    sha256 = "e261a08b72ce887286e2d57678b6dc05b576f37ed328653c2cc38cd4503893f2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ std-msgs pr2-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple script that aggregates all of the topics that a &quot;pr2_dashboard&quot; app might be interested in.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
