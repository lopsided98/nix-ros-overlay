
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, move-base-msgs, rospy, smach, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-follow-waypoints";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/danielsnider/follow_waypoints-release/archive/release/kinetic/follow_waypoints/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "3a70c85f6a6c6c0e35348b7372e496303e94a8cedaf87da5395077c3add3a329";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib geometry-msgs move-base-msgs rospy smach std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The follow_waypoints node will listen for waypoints given as
      poses and when instructed will follow them one by one by publishing goals
      to move_base.'';
    license = with lib.licenses; [ "Unlicense" ];
  };
}
