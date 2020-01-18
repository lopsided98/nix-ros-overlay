
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-cob-moveit-config";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_moveit_config/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "037f085f37dd59c759f82b4b7e24f855279ccc31e474d7c28e0375abffc5cbc6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt config files for all cob and raw'';
    license = with lib.licenses; [ asl20 ];
  };
}
