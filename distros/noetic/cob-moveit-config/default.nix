
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-moveit-config";
  version = "0.7.6-r4";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/noetic/cob_moveit_config/0.7.6-4.tar.gz";
    name = "0.7.6-4.tar.gz";
    sha256 = "aae8fb9e574992a4b2657d32106055e4f8133f2aec1a7fc21d8c462573b312cf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt config files for all cob and raw'';
    license = with lib.licenses; [ asl20 ];
  };
}
