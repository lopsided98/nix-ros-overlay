
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, geometry-msgs, rosbag, roscpp, rosflight, rosflight-firmware, rosflight-msgs, rosflight-sim, rosgraph-msgs, rospy, sensor-msgs, std-srvs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosflight-utils";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight_utils/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "dc06084a4c23a4df3a8b1f63547a42909c53c3a846d46ce5835c541865cc3a63";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-msgs geometry-msgs rosbag roscpp rosflight rosflight-firmware rosflight-msgs rosflight-sim rosgraph-msgs rospy sensor-msgs std-srvs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Supporting utilities for ROSflight packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
