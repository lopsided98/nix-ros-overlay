
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo, leo-bringup, leo-fw }:
buildRosPackage {
  pname = "ros-melodic-leo-robot";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/melodic/leo_robot/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "45d0b7a55a6199167ec09e75e76c413f49e4298d5cd6a526c4f01d7aa2ff7627";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo leo-bringup leo-fw ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software to install on Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
