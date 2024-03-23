
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, boost, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-swri-system-util";
  version = "3.6.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_system_util/3.6.1-2.tar.gz";
    name = "3.6.1-2.tar.gz";
    sha256 = "cdcac19aa269f8cdc772c4db1c7108b9e4622baae7f578ea24709dc72b79783b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ];
  propagatedBuildInputs = [ boost rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "swri_system_util";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
