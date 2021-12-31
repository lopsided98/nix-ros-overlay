
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo, leo-bringup, leo-fw }:
buildRosPackage {
  pname = "ros-noetic-leo-robot";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/noetic/leo_robot/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "edf8c4db1b0c6c965b20196e180721dfb78a2207e96b5e6f9a6dc101db29af47";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo leo-bringup leo-fw ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software to install on Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
