
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros-core, fastcdr, fastdds, rcpputils, rcutils, rosidl-dynamic-typesupport }:
buildRosPackage {
  pname = "ros-rolling-rosidl-dynamic-typesupport-fastrtps";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dynamic_typesupport_fastrtps-release/archive/release/rolling/rosidl_dynamic_typesupport_fastrtps/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "fc0ba2fe2482036534765ad98653e52e328be10c3c3b22309ca2af4de8650d07";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros-core ];
  propagatedBuildInputs = [ fastcdr fastdds rcpputils rcutils rosidl-dynamic-typesupport ];
  nativeBuildInputs = [ ament-cmake-ros-core ];

  meta = {
    description = "FastDDS serialization support implementation for use with C/C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
