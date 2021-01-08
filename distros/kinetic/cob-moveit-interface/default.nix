
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-script-server, geometry-msgs, moveit-commander, pythonPackages, rospy, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-moveit-interface";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_moveit_interface/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "3e36191f83806514fa3cdb69688f1544f6ba3b5a12c87f10da9a91aced324397";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-script-server geometry-msgs moveit-commander pythonPackages.six rospy tf ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''cob_moveit_interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
