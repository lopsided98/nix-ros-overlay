
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-phm-tools";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/inomuh/phm_tools-release/archive/release/kinetic/phm_tools/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "03a0c94123b549575edcb6e50a2b4b2e568afbdf0ce1dcb66a3bc73893946674";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The phm_tools package'';
    license = with lib.licenses; [ asl20 ];
  };
}
