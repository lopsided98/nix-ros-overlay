
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, moveit-commander, moveit-core, moveit-msgs, pilz-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pilz-industrial-motion-testutils";
  version = "0.3.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_industrial_motion_testutils/0.3.10-1.tar.gz";
    name = "0.3.10-1.tar.gz";
    sha256 = "50907af1ea26773568a750578dfd816052d2f6d995d0199445b40fd703cfbefe";
  };

  buildType = "catkin";
  buildInputs = [ eigen-conversions ];
  propagatedBuildInputs = [ moveit-commander moveit-core moveit-msgs pilz-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    license = with lib.licenses; [ asl20 ];
  };
}
