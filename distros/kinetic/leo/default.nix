
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-description, leo-teleop }:
buildRosPackage {
  pname = "ros-kinetic-leo";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/kinetic/leo/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "2104c485127f52f4c78c09127b48c045ebcc7c89e2e184c957d945ee8d440877";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo-description leo-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software for Leo Rover common to the robot and ROS desktop'';
    license = with lib.licenses; [ mit ];
  };
}
