
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, marti-introspection-msgs, rosgraph, rospy, rostopic }:
buildRosPackage {
  pname = "ros-melodic-swri-cli-tools";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_cli_tools/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "2ee4fd3897dceda29bb436710511d29e8ab2e72290b45efb62b209d29fe427ad";
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
