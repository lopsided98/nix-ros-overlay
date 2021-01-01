
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-description, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-kinetic-husky-viz";
  version = "0.3.8-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_viz/0.3.8-1.tar.gz";
    name = "0.3.8-1.tar.gz";
    sha256 = "61324f24b3c75ee2e835ca63e2cdc3fc276fb7b249cc177ec95775b3c10b8e76";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ husky-description joint-state-publisher joint-state-publisher-gui robot-state-publisher rviz rviz-imu-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization configuration for Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
