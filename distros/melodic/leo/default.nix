
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-description, leo-teleop }:
buildRosPackage {
  pname = "ros-melodic-leo";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/melodic/leo/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "d63f8049a206be39beacb794458eec54e4fb28c3ee6995f201323baf0142cc1b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ leo-description leo-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software for Leo Rover common to the robot and ROS desktop'';
    license = with lib.licenses; [ mit ];
  };
}
