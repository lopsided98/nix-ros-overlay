
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-moveit-config";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/noetic/cob_moveit_config/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "7a83f834e0083291ca89e0099d41b0f38a98552a593e826d7b7cb9699b8aa6c5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt config files for all cob and raw'';
    license = with lib.licenses; [ asl20 ];
  };
}
