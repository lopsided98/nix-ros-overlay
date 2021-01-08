
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-filters, nodelet, roscpp, sensor-msgs, tf2, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pointcloud-to-laserscan";
  version = "1.3.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/pointcloud_to_laserscan-release/archive/release/kinetic/pointcloud_to_laserscan/1.3.1-0.tar.gz";
    name = "1.3.1-0.tar.gz";
    sha256 = "66633ee7330ac4c9c2d9804be39168925486a12b42ea217d295894f455f6749a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-filters nodelet roscpp sensor-msgs tf2 tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts a 3D Point Cloud into a 2D laser scan. This is useful for making devices like the Kinect appear like a laser scanner for 2D-based algorithms (e.g. laser-based SLAM).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
