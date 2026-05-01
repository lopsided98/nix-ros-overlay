
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, fastcdr, nlohmann_json, rcpputils, rcutils, rmw, rmw-test-fixture, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, tracetools, zenoh-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-rmw-zenoh-cpp";
  version = "0.10.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_zenoh-release/archive/release/lyrical/rmw_zenoh_cpp/0.10.4-1.tar.gz";
    name = "0.10.4-1.tar.gz";
    sha256 = "9dca04f6d08169e2437922764815dccc2f3a8bc4be28aa753dd3dfacf7aaff25";
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
