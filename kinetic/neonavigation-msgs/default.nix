
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, safety-limiter-msgs, costmap-cspace-msgs, catkin, trajectory-tracker-msgs, planner-cspace-msgs, map-organizer-msgs }:
buildRosPackage {
  pname = "ros-kinetic-neonavigation-msgs";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_msgs-release/archive/release/kinetic/neonavigation_msgs/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "7ecdbe2667c57f1119d3b1cb9da7ee48eaecd961bd3638f2a18107bf91200437";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ safety-limiter-msgs costmap-cspace-msgs trajectory-tracker-msgs planner-cspace-msgs map-organizer-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for neonavigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
