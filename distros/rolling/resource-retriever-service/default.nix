
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, resource-retriever-interfaces }:
buildRosPackage {
  pname = "ros-rolling-resource-retriever-service";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever_service-release/archive/release/rolling/resource_retriever_service/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "5de2f1d4a70917085f105c5627b080cdc17ed759ddd71145d60bfe6b29ab27a7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp resource-retriever-interfaces ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "An in memory implementation of the resource_retriever_interfaces service.";
    license = with lib.licenses; [ asl20 ];
  };
}
