
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gmapping, map-server, turtlebot-bringup, amcl, sensor-msgs, catkin, move-base, roscpp, dwa-local-planner, tf }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-navigation";
  version = "2.3.7";

  src = fetchurl {
    url = https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/kinetic/turtlebot_navigation/2.3.7-0.tar.gz;
    sha256 = "cb54ee1f436869882dc973dc496e4506cf0987e01772d2b7769347c7c7a25101";
  };

  propagatedBuildInputs = [ gmapping turtlebot-bringup map-server amcl tf sensor-msgs move-base dwa-local-planner roscpp ];
  nativeBuildInputs = [ catkin sensor-msgs tf roscpp ];

  meta = {
    description = ''turtlebot_navigation'';
    #license = lib.licenses.BSD;
  };
}
