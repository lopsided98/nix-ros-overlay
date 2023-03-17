
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-description, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, roslaunch, rqt-console, rqt-gui, rqt-robot-monitor, rviz, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-noetic-husky-viz";
  version = "0.6.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_viz/0.6.7-1.tar.gz";
    name = "0.6.7-1.tar.gz";
    sha256 = "0c96484233bcaf344140bdc7d52a70883cf8cbc00f60dff921ed8f3389f19a58";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ husky-description joint-state-publisher joint-state-publisher-gui robot-state-publisher rqt-console rqt-gui rqt-robot-monitor rviz rviz-imu-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization configuration for Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
