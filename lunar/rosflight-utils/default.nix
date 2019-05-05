
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, sensor-msgs, catkin, gazebo-msgs, rosgraph-msgs, rospy, roscpp, geometry-msgs, rosflight-msgs }:
buildRosPackage {
  pname = "ros-lunar-rosflight-utils";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/rosflight/rosflight-release/archive/release/lunar/rosflight_utils/1.0.0-0.tar.gz;
    sha256 = "10d34e872c3ef2cbe78ea4d99b0b12955a1aa93247a17d4d0fd8d7a82606102c";
  };

  buildInputs = [ std-srvs geometry-msgs sensor-msgs rosgraph-msgs rospy roscpp gazebo-msgs rosflight-msgs ];
  propagatedBuildInputs = [ std-srvs geometry-msgs sensor-msgs rosgraph-msgs rospy roscpp gazebo-msgs rosflight-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Supporting utilities for ROSflight packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
