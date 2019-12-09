
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-ros, sensor-msgs, ament-cmake-auto, eigen3-cmake-module, eigen, tf2, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-tf2-sensor-msgs";
  version = "0.11.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/dashing/tf2_sensor_msgs/0.11.5-1.tar.gz";
    name = "0.11.5-1.tar.gz";
    sha256 = "3dfbac1e98b1a45ac96f6638137d14b3480642c5587883d9f5ec35d2778f5775";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs eigen tf2-ros tf2 ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ sensor-msgs eigen3-cmake-module eigen tf2 tf2-ros ];
  nativeBuildInputs = [ eigen3-cmake-module ament-cmake-auto ];

  meta = {
    description = ''Small lib to transform sensor_msgs with tf. Most notably, PointCloud2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
