
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jog-launch, jog-controller, catkin, jog-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jog-control";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jog_control-release/archive/release/kinetic/jog_control/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "e2d71ddb6645c4f81b284e8195b79fc5e398620e49f7f8ea60d9e0a8a1bde2c0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ jog-launch jog-controller jog-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on packages related to jog control.'';
    license = with lib.licenses; [ asl20 ];
  };
}
