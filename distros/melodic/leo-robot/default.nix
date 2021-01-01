
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo, leo-bringup, leo-fw }:
buildRosPackage {
  pname = "ros-melodic-leo-robot";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/melodic/leo_robot/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "2ef847a9938d847fbd72260cf952df16216243b548c2037706fca600c89a1bbb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo leo-bringup leo-fw ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software to install on Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
