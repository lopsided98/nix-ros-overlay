
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, geometry-msgs, joy, moveit-ros-manipulation, moveit-ros-move-group, moveit-ros-planning-interface, roscpp, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-jog-arm";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/UTNuclearRoboticsPublic/jog_arm-release/archive/release/kinetic/jog_arm/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "382bcfbf79085567186b63fa2f6bfa9a9243bacaca122421c1dacd9cd1199d25";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules geometry-msgs joy moveit-ros-manipulation moveit-ros-move-group moveit-ros-planning-interface roscpp rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides manipulator cartesian jogging.'';
    license = with lib.licenses; [ "specified in-file" ];
  };
}
