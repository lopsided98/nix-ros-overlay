
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-description, rviz-imu-plugin, rviz, robot-state-publisher, roslaunch, joint-state-publisher }:
buildRosPackage {
  pname = "ros-melodic-husky-viz";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_viz/0.4.0-1.tar.gz;
    sha256 = "d82adc5ac49f71ae700b8a32b732be7572b24d6527fade0057d7c2945b9cc2b2";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ husky-description rviz-imu-plugin rviz robot-state-publisher joint-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization configuration for Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
