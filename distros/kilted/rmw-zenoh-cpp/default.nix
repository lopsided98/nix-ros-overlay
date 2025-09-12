
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, fastcdr, nlohmann_json, rcpputils, rcutils, rmw, rmw-test-fixture, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, tracetools, zenoh-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-rmw-zenoh-cpp";
  version = "0.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_zenoh-release/archive/release/kilted/rmw_zenoh_cpp/0.6.4-1.tar.gz";
    name = "0.6.4-1.tar.gz";
    sha256 = "3a0ba7ac070f202ba5d588f6a206e58e12359fe4d02779eaadde0ea8672a35db";
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
