
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, eigen, eigen3-cmake-module, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-eloquent-tf2-sensor-msgs";
  version = "0.12.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/eloquent/tf2_sensor_msgs/0.12.5-1.tar.gz";
    name = "0.12.5-1.tar.gz";
    sha256 = "a75c527bf971f642ffa18ab5ff511f5957b4d10ea08db6e10ce7167eebe310a0";
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
