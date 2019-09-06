
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jog-launch, jog-controller, catkin, jog-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jog-control";
  version = "0.0.1";

  src = fetchurl {
    url = "https://github.com/tork-a/jog_control-release/archive/release/kinetic/jog_control/0.0.1-0.tar.gz";
    name = "0.0.1-0.tar.gz";
    sha256 = "12ac8a9904af23778000c4cda9c49a00618c35df3e090da74c7a69b588480cae";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ jog-launch jog-controller jog-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on packages related to jog control.'';
    license = with lib.licenses; [ asl20 ];
  };
}
