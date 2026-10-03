
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, resource-retriever-interfaces }:
buildRosPackage {
  pname = "ros-rolling-resource-retriever-service";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever_service-release/archive/release/rolling/resource_retriever_service/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "62a028c579cacca0023951897d09034dab5a9e3348124a030d8f220912fda334";
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
