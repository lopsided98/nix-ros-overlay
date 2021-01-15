
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, moveit-ros-move-group, pr2-description, robot-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-pr2-moveit-config";
  version = "0.7.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_pr2-release/archive/release/kinetic/pr2_moveit_config/0.7.1-0.tar.gz";
    name = "0.7.1-0.tar.gz";
    sha256 = "328424c2f9737095f4012c277831b420ab22bed11c4a6dac37c47baa707f585a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher moveit-ros-move-group pr2-description robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the pr2 with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
