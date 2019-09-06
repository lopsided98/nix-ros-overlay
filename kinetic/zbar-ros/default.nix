
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, catkin, cv-bridge, roscpp, zbar, nodelet }:
buildRosPackage {
  pname = "ros-kinetic-zbar-ros";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/zbar_ros-release/archive/release/kinetic/zbar_ros/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "da54b1a1cfd82fd7c6686bfcf6ffc78e124db8c06e3ab3093a3952d95407bfa2";
  };

  buildType = "catkin";
  buildInputs = [ roslint cv-bridge roscpp zbar nodelet ];
  propagatedBuildInputs = [ zbar nodelet cv-bridge roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Lightweight ROS wrapper for Zbar barcode/qrcode reader library (http://zbar.sourceforge
    .net/)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
