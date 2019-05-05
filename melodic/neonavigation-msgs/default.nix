
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-cspace-msgs, catkin, trajectory-tracker-msgs, map-organizer-msgs, planner-cspace-msgs }:
buildRosPackage {
  pname = "ros-melodic-neonavigation-msgs";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation_msgs-release/archive/release/melodic/neonavigation_msgs/0.3.1-0.tar.gz;
    sha256 = "7d971fab567d6f8c40daf97a1d1c7a8251a23576fa5a69396babfa98813ada18";
  };

  propagatedBuildInputs = [ costmap-cspace-msgs planner-cspace-msgs map-organizer-msgs trajectory-tracker-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for neonavigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
