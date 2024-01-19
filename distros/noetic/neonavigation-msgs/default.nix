
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace-msgs, map-organizer-msgs, neonavigation-metrics-msgs, planner-cspace-msgs, safety-limiter-msgs, trajectory-tracker-msgs }:
buildRosPackage {
  pname = "ros-noetic-neonavigation-msgs";
  version = "0.14.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_msgs-release/archive/release/noetic/neonavigation_msgs/0.14.0-1.tar.gz";
    name = "0.14.0-1.tar.gz";
    sha256 = "932ffe135d96b2ce31d7d77fd8c9381cf0b18a411810d4eafb0696c153b42777";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ costmap-cspace-msgs map-organizer-msgs neonavigation-metrics-msgs planner-cspace-msgs safety-limiter-msgs trajectory-tracker-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for neonavigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
