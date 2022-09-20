
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, teleop-twist-joy, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-melodic-leo-teleop";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/melodic/leo_teleop/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "038736af60665c2bcd0b9caf4b0c219ffebd1b8ad2ef1b14a3a0b65a72f0eff1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joy teleop-twist-joy teleop-twist-keyboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Scripts and launch files for Leo Rover teleoperation'';
    license = with lib.licenses; [ mit ];
  };
}
