
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, qt5, rviz, trajectory-tracker-msgs }:
buildRosPackage {
  pname = "ros-melodic-trajectory-tracker-rviz-plugins";
  version = "0.11.7-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/melodic/trajectory_tracker_rviz_plugins/0.11.7-1.tar.gz";
    name = "0.11.7-1.tar.gz";
    sha256 = "a4140671aeac1c451bf611ab0533b9d211216a3a27d687dd269da4dd321c75f2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pluginlib qt5.qtbase rviz trajectory-tracker-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz plugins for trajectory_tracker_msgs'';
    license = with lib.licenses; [ bsdOriginal "Creative-Commons" ];
  };
}
