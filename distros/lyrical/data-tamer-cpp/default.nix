
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, data-tamer-msgs, gtest-vendor, mcap-vendor, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-lyrical-data-tamer-cpp";
  version = "1.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/data_tamer-release/archive/release/lyrical/data_tamer_cpp/1.0.3-3.tar.gz";
    name = "1.0.3-3.tar.gz";
    sha256 = "de614ee0280eb0bf7b14fa51536ab92e720895c68c29d0ceca220dd1564ed2fb";
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
