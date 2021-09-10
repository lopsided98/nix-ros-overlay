
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, eigen, eigen3-cmake-module, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-tf2-sensor-msgs";
  version = "0.13.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/foxy/tf2_sensor_msgs/0.13.11-1.tar.gz";
    name = "0.13.11-1.tar.gz";
    sha256 = "c89036bfcd2ef4f8848a8de58c93f46a357d648a646cb000ba901c9c6103bed4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto eigen3-cmake-module ];

  meta = {
    description = ''Small lib to transform sensor_msgs with tf. Most notably, PointCloud2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
