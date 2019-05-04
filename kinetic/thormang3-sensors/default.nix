
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, laser-assembler, uvc-camera, realsense-camera, sensor-msgs, pcl, catkin, laser-filters, rgbd-launch, std-msgs, roscpp, pcl-conversions }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-sensors";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-PPC-release/archive/release/kinetic/thormang3_sensors/0.2.0-0.tar.gz;
    sha256 = "085916adfb99845fc7dd2004351c71c84d7b26a25340825b82a4343ade995606";
  };

  buildInputs = [ laser-assembler pcl sensor-msgs std-msgs roscpp pcl-conversions ];
  propagatedBuildInputs = [ laser-assembler uvc-camera realsense-camera pcl sensor-msgs laser-filters rgbd-launch std-msgs roscpp pcl-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains sensor related launch files.
    The package also includes a node for assembling Laserscan(LaserScan to PointCloud)'';
    license = with lib.licenses; [ asl20 ];
  };
}
