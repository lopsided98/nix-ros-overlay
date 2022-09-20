
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace-msgs, map-organizer-msgs, planner-cspace-msgs, safety-limiter-msgs, trajectory-tracker-msgs }:
buildRosPackage {
  pname = "ros-melodic-neonavigation-msgs";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_msgs-release/archive/release/melodic/neonavigation_msgs/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "45623c8fec17c42f7de1820ac84dc5a142216652e18744091d6b2920d878ae8c";
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
