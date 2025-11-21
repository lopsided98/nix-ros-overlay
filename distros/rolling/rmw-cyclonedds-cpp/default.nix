
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, cyclonedds, iceoryx-binding-c, rcpputils, rcutils, rmw, rmw-dds-common, rmw-security-common, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, tracetools }:
buildRosPackage {
  pname = "ros-rolling-rmw-cyclonedds-cpp";
  version = "4.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/rolling/rmw_cyclonedds_cpp/4.1.3-1.tar.gz";
    name = "4.1.3-1.tar.gz";
    sha256 = "8404452dbc0144aa8e5661b286df689f3bd1d8bfaa121e5bfff747d2521b0b8d";
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
