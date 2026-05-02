
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, data-tamer-msgs, gtest-vendor, mcap-vendor, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-data-tamer-cpp";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/data_tamer-release/archive/release/rolling/data_tamer_cpp/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "b1fc2fff1a87e470d3cf7643b9091d57542d856e92a2fdce404aa2f5d7bcafca";
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
