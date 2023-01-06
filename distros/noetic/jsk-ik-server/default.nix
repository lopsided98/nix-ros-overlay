
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, mk, moveit-msgs, roseus, rostest, tf }:
buildRosPackage {
  pname = "ros-noetic-jsk-ik-server";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/jsk_ik_server/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "80eb52f7cfdba38a0a7d6f5754488a36c21d694edff326988a0546fdd5883364";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules mk moveit-msgs roseus rostest tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_ik_server'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
