
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, eigen, eigen3-cmake-module, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-tf2-sensor-msgs";
  version = "0.13.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/foxy/tf2_sensor_msgs/0.13.12-1.tar.gz";
    name = "0.13.12-1.tar.gz";
    sha256 = "c2613e0fc644690cd2dce25e7f4ee3dc483989f86261a71031e82839baaee56e";
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
