
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, flexbe-msgs, python3Packages, rospy, rostest, tf }:
buildRosPackage {
  pname = "ros-noetic-flexbe-core";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/flexbe/flexbe_behavior_engine-release/archive/release/noetic/flexbe_core/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "c4225981256190ec4f137474481b9c08028529ec40015d2b0a71e1de2c0c827e";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ diagnostic-msgs flexbe-msgs rospy rostest tf ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''flexbe_core provides the core components for the FlexBE behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
