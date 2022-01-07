
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-moveit-config";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/noetic/cob_moveit_config/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "7c00139e3b54bb551daf98b7a15f08ace9bd2936c8fdff1ad74b3d3b69de4d38";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt config files for all cob and raw'';
    license = with lib.licenses; [ asl20 ];
  };
}
