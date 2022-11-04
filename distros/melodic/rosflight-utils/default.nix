
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, geometry-msgs, rosbag, roscpp, rosflight, rosflight-firmware, rosflight-msgs, rosflight-sim, rosgraph-msgs, rospy, sensor-msgs, std-srvs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosflight-utils";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/melodic/rosflight_utils/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "5a9ff019490687c98ed678a9b1074534a44e3c3d07c3cedc79d91688d4607e35";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-msgs geometry-msgs rosbag roscpp rosflight rosflight-firmware rosflight-msgs rosflight-sim rosgraph-msgs rospy sensor-msgs std-srvs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Supporting utilities for ROSflight packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
