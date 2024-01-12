
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, marti-introspection-msgs, rosgraph, rospy, rostopic }:
buildRosPackage {
  pname = "ros-noetic-swri-cli-tools";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_cli_tools/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "35b20dcb0abcac1bffda2f72b7151ce45ea9a46d3fa375f53b44a310ac653a14";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ marti-introspection-msgs rosgraph rospy rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosman contains the rosman tool for introspecting ROS nodes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
