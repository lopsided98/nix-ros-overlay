
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-camera-ros-interface";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_camera_ros_interface/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "191d981d8dce0b6463fb6decc556ed9a6ea9591b92c535703b0027751cdafbe4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ ROS 2 interface helpers for communicating with Tobas-compatible cameras.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
