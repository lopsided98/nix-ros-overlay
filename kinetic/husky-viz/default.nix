
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-description, joint-state-publisher, robot-state-publisher, roslaunch, rviz, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-kinetic-husky-viz";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_viz/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "13e38f605d1bb454e73c47f7396c4c829519ef57c228ef60db5511301aba549d";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ husky-description joint-state-publisher robot-state-publisher rviz rviz-imu-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization configuration for Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
