
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, resource-retriever-interfaces }:
buildRosPackage {
  pname = "ros-rolling-resource-retriever-service";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever_service-release/archive/release/rolling/resource_retriever_service/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "678bcecd6b9b4e5f4e24c9a0c95910926932cdd49dfa6ffd3570d55174341c55";
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
