
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, data-tamer-msgs, mcap-vendor, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-data-tamer-cpp";
  version = "0.9.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/data_tamer-release/archive/release/rolling/data_tamer_cpp/0.9.4-3.tar.gz";
    name = "0.9.4-3.tar.gz";
    sha256 = "2d72674bc54173246f7ae9770ffac03f7ff6a7d8c67d640d00525cd7c92326b7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ data-tamer-msgs mcap-vendor rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "DataTamer data logging library";
    license = with lib.licenses; [ mit ];
  };
}
