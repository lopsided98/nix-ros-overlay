
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, mk, moveit-msgs, roseus, rostest, tf }:
buildRosPackage {
  pname = "ros-noetic-jsk-ik-server";
  version = "0.1.17-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/jsk_ik_server/0.1.17-2.tar.gz";
    name = "0.1.17-2.tar.gz";
    sha256 = "4e586c7eed8fa2f9c1dd6eb04b49b5c4d17555a851e7f2a2fd5a409bd7ca4a97";
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
