
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-description, gazebo-ros, xacro }:
buildRosPackage {
  pname = "ros-noetic-raw-description";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/noetic/raw_description/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "52001cbe8cd8fe39cd73ec11716e9b7af2cdc91152fdf14bc3a420d9fba4d7d0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-description gazebo-ros xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
  etc.) of the Care-O-bot robot. The files in this package are parsed and used by
  a variety of other components. Most users will not interact directly
  with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
