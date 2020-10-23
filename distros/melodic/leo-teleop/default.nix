
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, teleop-twist-joy, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-melodic-leo-teleop";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/melodic/leo_teleop/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "5a7be21e50b8f41fe96f68c9151c46958842ddbd1e0954516727efb09eebf22b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joy teleop-twist-joy teleop-twist-keyboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Teleop package for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
