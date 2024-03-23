
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-moveit-config";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/noetic/cob_moveit_config/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "0cfa92bda73eb82d4377d35c857cabe123b3a07a748f936d02868117eaca49aa";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "MoveIt config files for all cob and raw";
    license = with lib.licenses; [ asl20 ];
  };
}
