
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-script-server, geometry-msgs, moveit-commander, python3Packages, rospy, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-moveit-interface";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/cob_moveit_interface/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "38d484d7b5c2eb4916448b15d3ff49c81cda6d6e8190bc8b16a659f54f9a3d05";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ cob-script-server geometry-msgs moveit-commander python3Packages.six rospy tf ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''cob_moveit_interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
