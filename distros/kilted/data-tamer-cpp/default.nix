
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, data-tamer-msgs, gtest-vendor, mcap-vendor, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-kilted-data-tamer-cpp";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/data_tamer-release/archive/release/kilted/data_tamer_cpp/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "7f85b1758fd9d4781d8a2c7fa799400975c66a80672de9247b912fb6a42f054f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-gtest data-tamer-msgs gtest-vendor mcap-vendor rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "DataTamer data logging library";
    license = with lib.licenses; [ mit ];
  };
}
