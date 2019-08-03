
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-commander, moveit-core, moveit-msgs, eigen-conversions, pilz-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pilz-industrial-motion-testutils";
  version = "0.3.8";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_industrial_motion_testutils/0.3.8-0.tar.gz;
    sha256 = "27040ab1dc8a0d9736d0bf8bc66f567a38cb175e79fb122b305f782f6e9da93d";
  };

  buildInputs = [ moveit-msgs eigen-conversions pilz-msgs moveit-core ];
  propagatedBuildInputs = [ moveit-msgs pilz-msgs moveit-commander moveit-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    license = with lib.licenses; [ asl20 ];
  };
}
