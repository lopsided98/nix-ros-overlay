
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, flexbe-msgs, rospy, rostest, tf }:
buildRosPackage {
  pname = "ros-noetic-flexbe-core";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/noetic/flexbe_core/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "fd81ffb82d0c0a081fea09281311c9ac8a2dc48b9200b300e488f7b5cf26ee56";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ diagnostic-msgs flexbe-msgs rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_core provides the core components for the FlexBE behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
