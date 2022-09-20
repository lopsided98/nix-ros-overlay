
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-description, leo-msgs, leo-teleop }:
buildRosPackage {
  pname = "ros-noetic-leo";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/noetic/leo/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "f7ad600b2ac91137aad450f3c657041399a9a4d3d2239e3b8d7f93be7001a220";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ leo-description leo-msgs leo-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software for Leo Rover common to the robot and ROS desktop'';
    license = with lib.licenses; [ mit ];
  };
}
