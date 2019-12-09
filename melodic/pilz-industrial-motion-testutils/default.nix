
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, eigen-conversions, moveit-commander, catkin, moveit-msgs, pilz-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-industrial-motion-testutils";
  version = "0.4.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_industrial_motion_testutils/0.4.10-1.tar.gz";
    name = "0.4.10-1.tar.gz";
    sha256 = "fd839ad672afda28b7730b366bbd35df8866b034d39e0de791a0573c168087f8";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core pilz-msgs moveit-msgs eigen-conversions ];
  propagatedBuildInputs = [ moveit-commander moveit-core pilz-msgs moveit-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    license = with lib.licenses; [ asl20 ];
  };
}
