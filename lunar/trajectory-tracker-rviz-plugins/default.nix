
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, rviz, qt5, trajectory-tracker-msgs }:
buildRosPackage {
  pname = "ros-lunar-trajectory-tracker-rviz-plugins";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/lunar/trajectory_tracker_rviz_plugins/0.3.0-0.tar.gz;
    sha256 = "dc1819cd17689c4ef029acc90b4650c7446b1f953a56a2d6a588b02ce6f9c5fe";
  };

  buildInputs = [ rviz trajectory-tracker-msgs pluginlib qt5.qtbase ];
  propagatedBuildInputs = [ rviz trajectory-tracker-msgs pluginlib qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz plugins for trajectory_tracker_msgs'';
    #license = lib.licenses.BSD;
  };
}
