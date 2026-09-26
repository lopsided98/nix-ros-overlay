
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-camera-ros-interface";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_camera_ros_interface/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "2ce5b1cf0591f1a5871f37e0f6e156f6e1c247399bc4cca8812123b3016244d7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ ROS 2 interface helpers for communicating with Tobas-compatible cameras.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
