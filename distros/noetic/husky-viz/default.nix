
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-description, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, roslaunch, rqt-console, rqt-gui, rqt-robot-monitor, rviz, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-noetic-husky-viz";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_viz/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "50323e6030035e6cc0570711b693ed2390f60ccb44faac2930fcf99619beba0f";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ husky-description joint-state-publisher joint-state-publisher-gui robot-state-publisher rqt-console rqt-gui rqt-robot-monitor rviz rviz-imu-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization configuration for Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
