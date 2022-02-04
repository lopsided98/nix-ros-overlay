
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-description, leo-msgs, leo-teleop }:
buildRosPackage {
  pname = "ros-noetic-leo";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/noetic/leo/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "41e4d90e206731360b52414d9d82460ef06074e202e30e7a6a2a2cb573cc88cb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo-description leo-msgs leo-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software for Leo Rover common to the robot and ROS desktop'';
    license = with lib.licenses; [ mit ];
  };
}
