
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, mk, moveit-msgs, roseus, rostest, tf }:
buildRosPackage {
  pname = "ros-noetic-jsk-ik-server";
  version = "0.1.18-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/jsk_ik_server/0.1.18-1.tar.gz";
    name = "0.1.18-1.tar.gz";
    sha256 = "5a4e39b17ea0a792003bf7c10f8186fa177429bf8004f84e2f75434485d6c538";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules mk moveit-msgs roseus rostest tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "jsk_ik_server";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
