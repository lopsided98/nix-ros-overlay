
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, marti-introspection-msgs, rosgraph, rospy, rostopic }:
buildRosPackage {
  pname = "ros-noetic-swri-cli-tools";
  version = "2.15.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_cli_tools/2.15.4-1.tar.gz";
    name = "2.15.4-1.tar.gz";
    sha256 = "af08828b627f634f19c58956b3fe56ea8306b959ebdcff8a91ce55c3f6d2722a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ marti-introspection-msgs rosgraph rospy rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "rosman contains the rosman tool for introspecting ROS nodes";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
