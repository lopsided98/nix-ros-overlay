
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, prbt-pg70-support }:
buildRosPackage {
  pname = "ros-melodic-prbt-grippers";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/prbt_grippers-release/archive/release/melodic/prbt_grippers/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "6765306ed7868e1f6005ffaacebc8a0161eb24cf8fcbfefff9f587ccc10a6e52";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ prbt-pg70-support ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package provides gripper support for the pilz_robots package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
