
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-index-cpp, ament-lint-auto, ament-lint-common, fastcdr, nlohmann_json, rcpputils, rcutils, rmw, rmw-test-fixture, rosidl-buffer-backend-registry, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, tracetools, zenoh-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-rmw-zenoh-cpp";
  version = "0.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_zenoh-release/archive/release/rolling/rmw_zenoh_cpp/0.14.0-1.tar.gz";
    name = "0.14.0-1.tar.gz";
    sha256 = "f26f92b13b4ae0b466af2821c91eb78e1697162f6378cc253f15d8012dd5272a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nlohmann_json ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-ros-core ament-index-cpp fastcdr rcpputils rcutils rmw rmw-test-fixture rosidl-buffer-backend-registry rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp tracetools zenoh-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "A ROS 2 middleware implementation using zenoh-cpp";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
