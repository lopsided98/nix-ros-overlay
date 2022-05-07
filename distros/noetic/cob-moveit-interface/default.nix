
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-script-server, geometry-msgs, moveit-commander, python3Packages, rospy, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-moveit-interface";
  version = "0.7.6-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/cob_moveit_interface/0.7.6-2.tar.gz";
    name = "0.7.6-2.tar.gz";
    sha256 = "b23e016544bda94934e7aafc143d32f33be4be7208481755b7ddf0759a9c3144";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-script-server geometry-msgs moveit-commander python3Packages.six rospy tf ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''cob_moveit_interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
