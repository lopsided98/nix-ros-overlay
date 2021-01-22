
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, eigen, eigen3-cmake-module, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-dashing-tf2-sensor-msgs";
  version = "0.11.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/dashing/tf2_sensor_msgs/0.11.6-1.tar.gz";
    name = "0.11.6-1.tar.gz";
    sha256 = "fec49970a85aba89ad7f1f3261e2be173a4fe40ea059a9b23d2670fb8130953e";
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
