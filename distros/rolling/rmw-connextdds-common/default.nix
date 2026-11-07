
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, fastcdr, rcpputils, rcutils, rmw, rmw-dds-common, rmw-security-common, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, rti-connext-dds-cmake-module, tracetools }:
buildRosPackage {
  pname = "ros-rolling-rmw-connextdds-common";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/rolling/rmw_connextdds_common/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "8e8b828f96610ac4e65f94234ace8f5b12d4290f69e532e79fb21cddb8d5485b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ fastcdr rcpputils rcutils rmw rmw-dds-common rmw-security-common rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp rti-connext-dds-cmake-module tracetools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Common source for RMW implementations built with RTI Connext DDS Professional and RTI Connext DDS Micro.";
    license = with lib.licenses; [ asl20 ];
  };
}
