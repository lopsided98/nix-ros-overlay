
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, map-server, tf, catkin, gmapping, move-base, roscpp, dwa-local-planner, amcl, turtlebot-bringup }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-navigation";
  version = "2.3.7";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/kinetic/turtlebot_navigation/2.3.7-0.tar.gz";
    name = "2.3.7-0.tar.gz";
    sha256 = "cb54ee1f436869882dc973dc496e4506cf0987e01772d2b7769347c7c7a25101";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs tf roscpp ];
  propagatedBuildInputs = [ sensor-msgs map-server tf gmapping move-base roscpp dwa-local-planner amcl turtlebot-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtlebot_navigation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
