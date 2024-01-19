
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, nodelet, roscpp, roslint, zbar }:
buildRosPackage {
  pname = "ros-noetic-zbar-ros";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/zbar_ros-release/archive/release/noetic/zbar_ros/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "75e34b3033a0ff405b0a6e1c306813e89f0e2cb2351c754c4dd6206fd2540f55";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ cv-bridge nodelet roscpp zbar ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Lightweight ROS wrapper for Zbar barcode/qrcode reader library (http://zbar.sourceforge
    .net/)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
