
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, sensor-msgs, catkin, yocs-math-toolkit, roscpp, ecl-threads, nodelet, std-msgs, tf, geometry-msgs, yocs-controllers }:
buildRosPackage {
  pname = "ros-kinetic-yocs-diff-drive-pose-controller";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_diff_drive_pose_controller/0.8.2-0.tar.gz;
    sha256 = "c0dc2309fe8032f58be66aad8a7003014bcf30686e74abe2049f3bc692b882b3";
  };

  propagatedBuildInputs = [ pluginlib sensor-msgs yocs-math-toolkit roscpp ecl-threads nodelet std-msgs tf geometry-msgs yocs-controllers ];
  nativeBuildInputs = [ pluginlib sensor-msgs catkin yocs-math-toolkit roscpp ecl-threads nodelet std-msgs tf geometry-msgs yocs-controllers ];

  meta = {
    description = ''A controller for driving a differential drive base to a pose goal or along a path specified by multiple poses.
    A pose consists of a 2D position (x,y) and a 1D orientation (theta).'';
    #license = lib.licenses.BSD;
  };
}
