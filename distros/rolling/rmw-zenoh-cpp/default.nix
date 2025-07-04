
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, fastcdr, nlohmann_json, rcpputils, rcutils, rmw, rmw-test-fixture, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, tracetools, zenoh-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-rmw-zenoh-cpp";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_zenoh-release/archive/release/rolling/rmw_zenoh_cpp/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "80f79896157e6739bb6b5db6d32d93f1e3a6a53c1f7394a4ab6d973c8d95515d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nlohmann_json ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp fastcdr rcpputils rcutils rmw rmw-test-fixture rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp tracetools zenoh-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 middleware implementation using zenoh-cpp";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
