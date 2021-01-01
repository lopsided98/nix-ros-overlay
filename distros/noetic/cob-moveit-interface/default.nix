
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-script-server, geometry-msgs, moveit-commander, python3Packages, rospy, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-moveit-interface";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/cob_moveit_interface/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "17170be18db61eacb68bf039a70d86e00db28e22fa82b5bb4321ade4404f3382";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-script-server geometry-msgs moveit-commander python3Packages.six rospy tf ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''cob_moveit_interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
