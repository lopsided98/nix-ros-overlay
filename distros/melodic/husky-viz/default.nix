
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-description, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-melodic-husky-viz";
  version = "0.4.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_viz/0.4.9-1.tar.gz";
    name = "0.4.9-1.tar.gz";
    sha256 = "715e1619570f076cda9aee2feb315ea89eee38918b3a6fd0fe9cc5b9dc0fe19f";
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
