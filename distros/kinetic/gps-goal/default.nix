
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, click, geometry-msgs, move-base-msgs, pythonPackages, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-gps-goal";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/danielsnider/gps_goal-release/archive/release/kinetic/gps_goal/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "d576cf5a55de148be6b5c7c65e34904f2ecbaafda7cd42b04627eb403ae24cb3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs click geometry-msgs move-base-msgs pythonPackages.geographiclib rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Set a ROS navigation goal using latitude and longitude.'';
    license = with lib.licenses; [ "Unlicense" ];
  };
}
