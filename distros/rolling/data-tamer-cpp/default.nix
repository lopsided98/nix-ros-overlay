
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, data-tamer-msgs, gtest-vendor, mcap-vendor, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-data-tamer-cpp";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/data_tamer-release/archive/release/rolling/data_tamer_cpp/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "d4fe4938260da52833e00f5c4b282320511cea0a7cbfb607b2c2973409248250";
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
