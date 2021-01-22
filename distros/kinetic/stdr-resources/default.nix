
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-stdr-resources";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/stdr-simulator-ros-pkg/stdr_simulator-release/archive/release/kinetic/stdr_resources/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "255da1ade123bb7517ef0dca68e5c5aacac0eac33f147e249df448e4fa99c960";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides robot and sensor descripiton files for STDR Simulator.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
