
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace-msgs, map-organizer-msgs, planner-cspace-msgs, safety-limiter-msgs, trajectory-tracker-msgs }:
buildRosPackage {
  pname = "ros-kinetic-neonavigation-msgs";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_msgs-release/archive/release/kinetic/neonavigation_msgs/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "f9a4c1356c4476e74c964d24833507159134227ca2837468fb984c0dab4f7c24";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-cspace-msgs map-organizer-msgs planner-cspace-msgs safety-limiter-msgs trajectory-tracker-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for neonavigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
