
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-kobuki-ros";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/stonier/kobuki_ros-release/archive/release/eloquent/kobuki_ros/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "a86802618dff3b3ec9b6ec23d1b8f9c8404b5bac98a6179f78e40df0a0d65ae8";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 runtime software for Kobuki, Yujin Robot's mobile research base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
