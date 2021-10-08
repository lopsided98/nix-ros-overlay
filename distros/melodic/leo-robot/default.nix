
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo, leo-bringup, leo-fw }:
buildRosPackage {
  pname = "ros-melodic-leo-robot";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/melodic/leo_robot/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "ff74d389667659898cd61e0a039ca5d3c510ba3c43bb3ce28d443dfd908f2795";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo leo-bringup leo-fw ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software to install on Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
