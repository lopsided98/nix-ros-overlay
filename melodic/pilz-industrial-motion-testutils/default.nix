
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, catkin, moveit-core, moveit-commander, moveit-msgs, eigen-conversions, pilz-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-industrial-motion-testutils";
  version = "0.4.6-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_industrial_motion_testutils/0.4.6-1.tar.gz";
    name = "0.4.6-1.tar.gz";
    sha256 = "0192d985ae7ba8ee71afed43c103a2edf92dff47b0d4b7fb6da9c7f004a39487";
  };

  buildType = "catkin";
  buildInputs = [ clang moveit-core moveit-msgs eigen-conversions pilz-msgs ];
  propagatedBuildInputs = [ moveit-msgs pilz-msgs moveit-commander moveit-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    license = with lib.licenses; [ asl20 ];
  };
}
