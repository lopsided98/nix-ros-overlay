
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, yocs-math-toolkit, pluginlib, std-msgs, tf, catkin, nodelet, roscpp, ecl-threads, yocs-controllers }:
buildRosPackage {
  pname = "ros-melodic-yocs-diff-drive-pose-controller";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_diff_drive_pose_controller/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "fbe23c95911cfbb840e28142bf91da168207ff3cde4ef61f703674672c2e5431";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs yocs-math-toolkit pluginlib std-msgs tf nodelet roscpp ecl-threads yocs-controllers ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs yocs-math-toolkit pluginlib std-msgs tf nodelet roscpp ecl-threads yocs-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A controller for driving a differential drive base to a pose goal or along a path specified by multiple poses.
    A pose consists of a 2D position (x,y) and a 1D orientation (theta).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
