
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-commander, moveit-core, moveit-msgs, eigen-conversions, pilz-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-industrial-motion-testutils";
  version = "0.4.3";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_industrial_motion_testutils/0.4.3-0.tar.gz;
    sha256 = "8cacbe2c01a7a31208f5e212e965daf275ee72258112d6691e6206f096dedf9a";
  };

  buildInputs = [ moveit-msgs eigen-conversions pilz-msgs moveit-core ];
  propagatedBuildInputs = [ moveit-msgs pilz-msgs moveit-commander moveit-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    license = with lib.licenses; [ asl20 ];
  };
}
