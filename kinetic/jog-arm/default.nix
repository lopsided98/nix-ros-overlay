
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-move-group, cmake-modules, sensor-msgs, joy, catkin, moveit-ros-manipulation, roscpp, rospy, tf, moveit-ros-planning-interface, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jog-arm";
  version = "0.0.3-r2";

  src = fetchurl {
    url = https://github.com/UTNuclearRoboticsPublic/jog_arm-release/archive/release/kinetic/jog_arm/0.0.3-2.tar.gz;
    sha256 = "382bcfbf79085567186b63fa2f6bfa9a9243bacaca122421c1dacd9cd1199d25";
  };

  buildInputs = [ moveit-ros-move-group cmake-modules sensor-msgs joy moveit-ros-manipulation roscpp rospy tf moveit-ros-planning-interface geometry-msgs ];
  propagatedBuildInputs = [ moveit-ros-move-group cmake-modules sensor-msgs joy moveit-ros-manipulation roscpp rospy tf moveit-ros-planning-interface geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides manipulator cartesian jogging.'';
    license = with lib.licenses; [ "specified in-file" ];
  };
}
