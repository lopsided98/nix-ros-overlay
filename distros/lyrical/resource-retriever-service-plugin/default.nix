
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, resource-retriever, resource-retriever-interfaces }:
buildRosPackage {
  pname = "ros-lyrical-resource-retriever-service-plugin";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever_service-release/archive/release/lyrical/resource_retriever_service_plugin/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "b08d7722dbffae131daacfa5335234ecabeba8c0f82f7e191989d29f141e18cd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp resource-retriever resource-retriever-interfaces ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "A resource retriever plugin that relies on talking to a service (specified by resource_retriever_interfaces) for retrieving resources like meshes.";
    license = with lib.licenses; [ asl20 ];
  };
}
