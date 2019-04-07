
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-filters, tf2-ros, tf2-sensor-msgs, tf2, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-pointcloud-to-laserscan";
  version = "1.3.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/pointcloud_to_laserscan-release/archive/release/kinetic/pointcloud_to_laserscan/1.3.1-0.tar.gz;
    sha256 = "66633ee7330ac4c9c2d9804be39168925486a12b42ea217d295894f455f6749a";
  };

  buildInputs = [ tf2-sensor-msgs tf2 nodelet sensor-msgs roscpp message-filters tf2-ros ];
  propagatedBuildInputs = [ tf2-sensor-msgs tf2 nodelet sensor-msgs roscpp message-filters tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts a 3D Point Cloud into a 2D laser scan. This is useful for making devices like the Kinect appear like a laser scanner for 2D-based algorithms (e.g. laser-based SLAM).'';
    #license = lib.licenses.BSD;
  };
}
