
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-cob-moveit-config";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_moveit_config/0.6.11-0.tar.gz;
    sha256 = "3137bbad1cdcccbbd9d9b725e07027730169094c4c431893bf10ce6a044be683";
  };

  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt config files for all cob and raw'';
    #license = lib.licenses.Apache 2.0;
  };
}
