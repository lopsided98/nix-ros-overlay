
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-script-server, geometry-msgs, moveit-commander, pythonPackages, rospy, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-moveit-interface";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_moveit_interface/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "8ee1ecc7717fa8f25d3a898811e4f9e32d3728d374f1cb7e803783254f70d6e5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-script-server geometry-msgs moveit-commander pythonPackages.six rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_moveit_interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
