
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roseus, tf, cmake-modules, catkin, moveit-msgs, rostest, mk }:
buildRosPackage {
  pname = "ros-kinetic-jsk-ik-server";
  version = "0.1.14";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/kinetic/jsk_ik_server/0.1.14-0.tar.gz";
    name = "0.1.14-0.tar.gz";
    sha256 = "ec5f30870a0afead46a6a281ed0a74256873638611b8cc4c15ec4d68b1de8a97";
  };

  buildType = "catkin";
  buildInputs = [ roseus cmake-modules tf moveit-msgs rostest mk ];
  propagatedBuildInputs = [ roseus cmake-modules tf moveit-msgs rostest mk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_ik_server'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
