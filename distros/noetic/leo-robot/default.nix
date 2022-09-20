
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo, leo-bringup, leo-fw }:
buildRosPackage {
  pname = "ros-noetic-leo-robot";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/noetic/leo_robot/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "f7c674eff3757145fb1caa61d2b52d73ab8eed0946b4ca35d983d8fa1910d372";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ leo leo-bringup leo-fw ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software to install on Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
