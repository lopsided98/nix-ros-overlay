
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-description, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-melodic-husky-viz";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_viz/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "753cdf0cf96fbea1722939adf0328eed6832cf72375e8a9e2d49576547009d41";
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
