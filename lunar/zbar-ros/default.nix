
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, catkin, cv-bridge, roscpp, zbar, nodelet }:
buildRosPackage {
  pname = "ros-lunar-zbar-ros";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/zbar_ros-release/archive/release/lunar/zbar_ros/0.1.0-0.tar.gz;
    sha256 = "c396e7a10cc45f4caa3e70b6b75d5eef4816eb1e1507702549ba3b8f3e619b39";
  };

  buildInputs = [ zbar cv-bridge roslint nodelet roscpp ];
  propagatedBuildInputs = [ zbar cv-bridge roscpp nodelet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Lightweight ROS wrapper for Zbar barcode/qrcode reader library (http://zbar.sourceforge
    .net/)'';
    #license = lib.licenses.BSD;
  };
}
