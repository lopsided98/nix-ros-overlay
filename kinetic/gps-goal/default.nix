
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, click, sensor-msgs, catkin, move-base-msgs, actionlib, rospy, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-gps-goal";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/danielsnider/gps_goal-release/archive/release/kinetic/gps_goal/0.1.0-0.tar.gz;
    sha256 = "d576cf5a55de148be6b5c7c65e34904f2ecbaafda7cd42b04627eb403ae24cb3";
  };

  buildInputs = [ actionlib-msgs sensor-msgs move-base-msgs actionlib rospy tf geometry-msgs ];
  propagatedBuildInputs = [ actionlib-msgs click sensor-msgs move-base-msgs actionlib rospy tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Set a ROS navigation goal using latitude and longitude.'';
    license = with lib.licenses; [ "Unlicense" ];
  };
}
