
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-script-server, geometry-msgs, moveit-commander, python3Packages, rospy, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-moveit-interface";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/cob_moveit_interface/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "3ca17fb4383209fb72a72e56add94f096da1cba80be8936147eb4b82b3201d0f";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ cob-script-server geometry-msgs moveit-commander python3Packages.six rospy tf ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "cob_moveit_interface";
    license = with lib.licenses; [ asl20 ];
  };
}
