
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, fastcdr, rcpputils, rcutils, rmw, rmw-dds-common, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, rti-connext-dds-cmake-module }:
buildRosPackage {
  pname = "ros-humble-rmw-connextdds-common";
  version = "0.11.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/humble/rmw_connextdds_common/0.11.1-2.tar.gz";
    name = "0.11.1-2.tar.gz";
    sha256 = "5e6ecf7df102a5db269f662284e21f952806e509a9eecc5701e287831a7eac91";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake fastcdr rcpputils rcutils rmw rmw-dds-common rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp rti-connext-dds-cmake-module ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = ''Common source for RMW implementations built with RTI Connext DDS Professional and RTI Connext DDS Micro.'';
    license = with lib.licenses; [ asl20 ];
  };
}
