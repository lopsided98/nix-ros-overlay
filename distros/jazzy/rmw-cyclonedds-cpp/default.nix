
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, cyclonedds, iceoryx-binding-c, rcpputils, rcutils, rmw, rmw-dds-common, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, tracetools }:
buildRosPackage {
  pname = "ros-jazzy-rmw-cyclonedds-cpp";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/jazzy/rmw_cyclonedds_cpp/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "295b9fef0647557ab8947f3eae0a595970972fac5ed0232744c8720f5d2a23e9";
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
