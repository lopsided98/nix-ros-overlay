
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosjava-build-tools }:
buildRosPackage {
  pname = "ros-kinetic-rosjava-bootstrap";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/rosjava-release/rosjava_bootstrap-release/archive/release/kinetic/rosjava_bootstrap/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "7e4eb1a95a616fa7af3c1541ad6abf672dc69b26a36fe9acec545c4b27310bcd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosjava-build-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bootstrap utilities for rosjava builds.'';
    license = with lib.licenses; [ asl20 ];
  };
}
