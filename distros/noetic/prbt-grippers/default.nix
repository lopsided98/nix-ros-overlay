
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, prbt-pg70-support }:
buildRosPackage {
  pname = "ros-noetic-prbt-grippers";
  version = "0.0.5-r2";

  src = fetchurl {
    url = "https://github.com/PilzDE/prbt_grippers-release/archive/release/noetic/prbt_grippers/0.0.5-2.tar.gz";
    name = "0.0.5-2.tar.gz";
    sha256 = "247d2f120856a583416b03754784fae60810ad9855c85b7681db9364547a44e7";
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
