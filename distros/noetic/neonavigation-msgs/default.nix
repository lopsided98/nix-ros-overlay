
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace-msgs, map-organizer-msgs, planner-cspace-msgs, safety-limiter-msgs, trajectory-tracker-msgs }:
buildRosPackage {
  pname = "ros-noetic-neonavigation-msgs";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_msgs-release/archive/release/noetic/neonavigation_msgs/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "8956d12a43d9ba0dbfe6c9dd1ef582bfc19b619deba6fab8ae9c6837cf4f50e6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ costmap-cspace-msgs map-organizer-msgs planner-cspace-msgs safety-limiter-msgs trajectory-tracker-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for neonavigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
