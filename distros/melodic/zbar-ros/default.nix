
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, nodelet, roscpp, roslint, zbar }:
buildRosPackage {
  pname = "ros-melodic-zbar-ros";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/zbar_ros-release/archive/release/melodic/zbar_ros/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "62350ba0852b9f2f140a2495a162190ae01ec361bebd28782115ac6d32366f87";
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
