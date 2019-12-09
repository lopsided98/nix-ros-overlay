
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, realsense-camera, laser-filters, std-msgs, laser-assembler, catkin, pcl, uvc-camera, pcl-conversions, roscpp, rgbd-launch }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-sensors";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-PPC-release/archive/release/kinetic/thormang3_sensors/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "085916adfb99845fc7dd2004351c71c84d7b26a25340825b82a4343ade995606";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs std-msgs laser-assembler pcl pcl-conversions roscpp ];
  propagatedBuildInputs = [ sensor-msgs realsense-camera laser-filters std-msgs laser-assembler pcl uvc-camera pcl-conversions roscpp rgbd-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains sensor related launch files.
    The package also includes a node for assembling Laserscan(LaserScan to PointCloud)'';
    license = with lib.licenses; [ asl20 ];
  };
}
