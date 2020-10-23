
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo, leo-bringup, leo-fw }:
buildRosPackage {
  pname = "ros-melodic-leo-robot";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/melodic/leo_robot/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "abb5740cde8522a5785a43d32748fbe48789d03294d993a96ef6d129318d0332";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo leo-bringup leo-fw ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software to install on Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
