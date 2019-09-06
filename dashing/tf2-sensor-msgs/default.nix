
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, sensor-msgs, tf2-ros, ament-cmake-auto, tf2, eigen }:
buildRosPackage rec {
  pname = "ros-dashing-tf2-sensor-msgs";
  version = "0.11.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/dashing/tf2_sensor_msgs/0.11.4-1.tar.gz";
    name = "0.11.4-1.tar.gz";
    sha256 = "2e257a2a2c99decdfe876789f849d187424c71a7aef77a9017ee938819ca1adc";
  };

  buildType = "ament_cmake";
  buildInputs = [ tf2 sensor-msgs tf2-ros eigen ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ tf2 sensor-msgs tf2-ros eigen ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Small lib to transform sensor_msgs with tf. Most notably, PointCloud2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
