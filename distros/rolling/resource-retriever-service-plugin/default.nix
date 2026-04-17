
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, resource-retriever, resource-retriever-interfaces }:
buildRosPackage {
  pname = "ros-rolling-resource-retriever-service-plugin";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever_service-release/archive/release/rolling/resource_retriever_service_plugin/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "8fbc43f04dd1c6e035deea2be3715b702a0fe561c9f2f8875076012aecb01ba0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp resource-retriever resource-retriever-interfaces ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "A resource retriever plugin that relies on talking to a service (specified by resource_retriever_interfaces) for retrieving resources like meshes.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
