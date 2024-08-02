
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, cyclonedds, iceoryx-binding-c, rcpputils, rcutils, rmw, rmw-dds-common, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, tracetools }:
buildRosPackage {
  pname = "ros-rolling-rmw-cyclonedds-cpp";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/rolling/rmw_cyclonedds_cpp/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "ae1288b9088b86c0edf80de97d8091424c58820d644ce0d384d61907b07881ff";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cyclonedds iceoryx-binding-c rcpputils rcutils rmw rmw-dds-common rosidl-runtime-c rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp tracetools ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Implement the ROS middleware interface using Eclipse CycloneDDS in C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
