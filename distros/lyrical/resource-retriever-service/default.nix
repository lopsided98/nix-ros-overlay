
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, resource-retriever-interfaces }:
buildRosPackage {
  pname = "ros-lyrical-resource-retriever-service";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever_service-release/archive/release/lyrical/resource_retriever_service/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "5c2c53b343bc4b672c5eeaabea46f9c0a55fd46773377cf84d1b2f3ccf30b5c6";
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
