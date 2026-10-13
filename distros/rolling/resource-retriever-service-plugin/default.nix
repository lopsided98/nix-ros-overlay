
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcl-interfaces, rclcpp, resource-retriever, resource-retriever-interfaces }:
buildRosPackage {
  pname = "ros-rolling-resource-retriever-service-plugin";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever_service-release/archive/release/rolling/resource_retriever_service_plugin/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "2ba30454fc699e3aa48a20355cbae0afbad05ab03a482a043746d4c9328e9c54";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcl-interfaces rclcpp resource-retriever resource-retriever-interfaces ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "A resource retriever plugin that relies on talking to a service (specified by resource_retriever_interfaces) for retrieving resources like meshes.";
    license = with lib.licenses; [ asl20 ];
  };
}
