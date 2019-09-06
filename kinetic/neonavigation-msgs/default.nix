
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-cspace-msgs, catkin, trajectory-tracker-msgs, map-organizer-msgs, planner-cspace-msgs }:
buildRosPackage {
  pname = "ros-kinetic-neonavigation-msgs";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_msgs-release/archive/release/kinetic/neonavigation_msgs/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "185767134b2bdeb7a44c8e155d57d8518cd423171fbd944b118619346fccdc86";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-cspace-msgs planner-cspace-msgs map-organizer-msgs trajectory-tracker-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for neonavigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
