
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, osrf-testing-tools-cpp, rcpputils, rcutils, rmw, rmw-dds-common, rosidl-dynamic-typesupport, rosidl-dynamic-typesupport-fastrtps, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, tracetools }:
buildRosPackage {
  pname = "ros-iron-rmw-fastrtps-shared-cpp";
  version = "7.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/iron/rmw_fastrtps_shared_cpp/7.1.4-1.tar.gz";
    name = "7.1.4-1.tar.gz";
    sha256 = "8f0df1e54d4e4dbdfe72de5d05cd02945a7e07e0cced41bc81cae5a78e26b9ed";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-runtime-c ];
  checkInputs = [ ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ ament-cmake fastcdr fastrtps fastrtps-cmake-module rcpputils rcutils rmw rmw-dds-common rosidl-dynamic-typesupport rosidl-dynamic-typesupport-fastrtps rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp tracetools ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros fastrtps-cmake-module ];

  meta = {
    description = "Code shared on static and dynamic type support of rmw_fastrtps_cpp.";
    license = with lib.licenses; [ asl20 ];
  };
}
