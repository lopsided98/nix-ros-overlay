
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, fastcdr, rcpputils, rcutils, rmw, rmw-dds-common, rmw-security-common, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, rti-connext-dds-cmake-module, tracetools }:
buildRosPackage {
  pname = "ros-rolling-rmw-connextdds-common";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/rolling/rmw_connextdds_common/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "c1552d3ebe2b2e351fe4154a4812157b1536c9370d30890f8dba3feb569b6e3b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake fastcdr rcpputils rcutils rmw rmw-dds-common rmw-security-common rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp rti-connext-dds-cmake-module tracetools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Common source for RMW implementations built with RTI Connext DDS Professional and RTI Connext DDS Micro.";
    license = with lib.licenses; [ asl20 ];
  };
}
