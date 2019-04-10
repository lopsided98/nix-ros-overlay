
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-cspace-msgs, catkin, trajectory-tracker-msgs, map-organizer-msgs, planner-cspace-msgs }:
buildRosPackage {
  pname = "ros-lunar-neonavigation-msgs";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation_msgs-release/archive/release/lunar/neonavigation_msgs/0.3.1-0.tar.gz;
    sha256 = "9f77b87a64c08be44d69ba093feed0259d48611557637da47f460dc7a1180f1d";
  };

  propagatedBuildInputs = [ costmap-cspace-msgs planner-cspace-msgs map-organizer-msgs trajectory-tracker-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for neonavigation package'';
    #license = lib.licenses.BSD;
  };
}
