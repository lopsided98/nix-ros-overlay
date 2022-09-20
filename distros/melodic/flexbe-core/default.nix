
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, flexbe-msgs, rospy, rostest, tf }:
buildRosPackage {
  pname = "ros-melodic-flexbe-core";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_core/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "76bc352f0f1eee154e958b4da7b7cc35ceba8f5ed1d0a38ded989ee301da1c30";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ diagnostic-msgs flexbe-msgs rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_core provides the core components for the FlexBE behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
