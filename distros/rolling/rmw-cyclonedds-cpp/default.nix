
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, cyclonedds, iceoryx-binding-c, rcpputils, rcutils, rmw, rmw-dds-common, rmw-security-common, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, tracetools }:
buildRosPackage {
  pname = "ros-rolling-rmw-cyclonedds-cpp";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/rolling/rmw_cyclonedds_cpp/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "2527c88e8d46d7ad7a552c684fb05b8305365c4593bf9473a3256c8f6cea075c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cyclonedds iceoryx-binding-c rcpputils rcutils rmw rmw-dds-common rmw-security-common rosidl-runtime-c rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp tracetools ];
  nativeBuildInputs = [ ament-cmake-ros-core ];

  meta = {
    description = "Implement the ROS middleware interface using Eclipse CycloneDDS in C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
