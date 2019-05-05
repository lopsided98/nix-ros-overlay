
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, message-filters, tf2-ros, roscpp, tf2-sensor-msgs, tf2, nodelet }:
buildRosPackage {
  pname = "ros-lunar-pointcloud-to-laserscan";
  version = "1.4.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/pointcloud_to_laserscan-release/archive/release/lunar/pointcloud_to_laserscan/1.4.0-0.tar.gz;
    sha256 = "5a7e44aa3523ec2b39676688fb91d6c0e2cf3ec57f633ce2b672b8a181cc0713";
  };

  buildInputs = [ sensor-msgs message-filters tf2-ros tf2-sensor-msgs tf2 nodelet roscpp ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ sensor-msgs message-filters tf2-ros tf2-sensor-msgs tf2 nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts a 3D Point Cloud into a 2D laser scan. This is useful for making devices like the Kinect appear like a laser scanner for 2D-based algorithms (e.g. laser-based SLAM).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
