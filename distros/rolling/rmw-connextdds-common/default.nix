
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, fastcdr, rcpputils, rcutils, rmw, rmw-dds-common, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, rti-connext-dds-cmake-module, tracetools }:
buildRosPackage {
  pname = "ros-rolling-rmw-connextdds-common";
  version = "0.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/rolling/rmw_connextdds_common/0.21.0-1.tar.gz";
    name = "0.21.0-1.tar.gz";
    sha256 = "d90f43081253b38b8a46029070f138e1efe24cefe82109910e10d43c1378706d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake fastcdr rcpputils rcutils rmw rmw-dds-common rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp rti-connext-dds-cmake-module tracetools ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = "Common source for RMW implementations built with RTI Connext DDS Professional and RTI Connext DDS Micro.";
    license = with lib.licenses; [ asl20 ];
  };
}
