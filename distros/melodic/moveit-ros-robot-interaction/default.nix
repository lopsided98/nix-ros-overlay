
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-markers, moveit-ros-planning, roscpp, rosunit, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-robot-interaction";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_robot_interaction/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "23019d134d5100cbda9db345b975728863cde2c4089e3483be873e87d63355f0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ interactive-markers moveit-ros-planning roscpp tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! that offer interaction via interactive markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
