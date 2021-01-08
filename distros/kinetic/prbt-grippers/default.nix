
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, prbt-pg70-support }:
buildRosPackage {
  pname = "ros-kinetic-prbt-grippers";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/prbt_grippers-release/archive/release/kinetic/prbt_grippers/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "142d08d522fe6387bd59140585a269cfad11ee6cbccb23bcb7e14ecd52425fd1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ prbt-pg70-support ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package provides gripper support for the pilz_robots package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
