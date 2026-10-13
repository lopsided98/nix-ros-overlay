
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-camera-ros-interface";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_camera_ros_interface/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "c5f05665756c8597bb7dc79ac63cfb9bb1be38061523abc655cc0270bb3402a8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ ROS 2 interface helpers for communicating with Tobas-compatible cameras.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
