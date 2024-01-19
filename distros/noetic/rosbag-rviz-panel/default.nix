
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, qt5, rosbag, roscpp, rviz }:
buildRosPackage {
  pname = "ros-noetic-rosbag-rviz-panel";
  version = "0.1.9-r2";

  src = fetchurl {
    url = "https://github.com/fada-catec/rosbag_rviz_panel-release/archive/release/noetic/rosbag_rviz_panel/0.1.9-2.tar.gz";
    name = "0.1.9-2.tar.gz";
    sha256 = "673bfa2317ef103b5f0093cdacf3da62e6f56c912a23c2be1a1f84e60564f333";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pluginlib qt5.qtbase rosbag roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rosbag_rviz_panel package'';
    license = with lib.licenses; [ mit ];
  };
}
