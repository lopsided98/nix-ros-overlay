
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, cyclonedds, iceoryx-binding-c, rcpputils, rcutils, rmw, rmw-dds-common, rmw-security-common, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, tracetools }:
buildRosPackage {
  pname = "ros-rolling-rmw-cyclonedds-cpp";
  version = "4.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/rolling/rmw_cyclonedds_cpp/4.1.2-1.tar.gz";
    name = "4.1.2-1.tar.gz";
    sha256 = "5f7d2adad27bf957c6dce1c5b3674542c60c200a23d43aa7a1ab21128bd9af2e";
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
