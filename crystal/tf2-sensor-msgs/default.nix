
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, sensor-msgs, tf2-ros, ament-cmake-auto, tf2, eigen }:
buildRosPackage {
  pname = "ros-crystal-tf2-sensor-msgs";
  version = "0.10.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/geometry2-release/archive/release/crystal/tf2_sensor_msgs/0.10.1-0.tar.gz;
    sha256 = "9dd7df4d7dbc5eb6b757acf55b5d356d22903aefccabe59a1d770813c19c7cd7";
  };

  buildInputs = [ tf2 sensor-msgs tf2-ros eigen ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ tf2 sensor-msgs tf2-ros eigen ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Small lib to transform sensor_msgs with tf. Most notably, PointCloud2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
