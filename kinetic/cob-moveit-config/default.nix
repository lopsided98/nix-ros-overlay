
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-cob-moveit-config";
  version = "0.7.1-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_moveit_config/0.7.1-1.tar.gz;
    sha256 = "56ab5c0cb539f6b3a82e47f6968ff4cd194403f7c734a8795e4897e5527105f5";
  };

  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt config files for all cob and raw'';
    license = with lib.licenses; [ asl20 ];
  };
}
