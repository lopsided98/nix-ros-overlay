
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, moveit-commander, moveit-core, moveit-msgs, pilz-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-industrial-motion-testutils";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_industrial_motion_testutils/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "9b3a7d28215e7e282d4e9d5b93c36ee832b664a8d5d847c44ad149bdac6c990e";
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
