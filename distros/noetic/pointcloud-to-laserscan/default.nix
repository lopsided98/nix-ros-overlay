
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-geometry, message-filters, nodelet, roscpp, roslint, sensor-msgs, tf2, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-pointcloud-to-laserscan";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/pointcloud_to_laserscan-release/archive/release/noetic/pointcloud_to_laserscan/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "acc561fc25b0b63f7eed1f56040bf2992e400e9bba6c22380d571c10478eeb40";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ laser-geometry message-filters nodelet roscpp sensor-msgs tf2 tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts a 3D Point Cloud into a 2D laser scan. This is useful for making devices like the Kinect appear like a laser scanner for 2D-based algorithms (e.g. laser-based SLAM).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
