
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, fastcdr, fastdds, rcpputils, rcutils, rosidl-dynamic-typesupport }:
buildRosPackage {
  pname = "ros-rolling-rosidl-dynamic-typesupport-fastrtps";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dynamic_typesupport_fastrtps-release/archive/release/rolling/rosidl_dynamic_typesupport_fastrtps/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "c19e19f221de4d11d34df239da453f47b5ad6c081cc78a5e0ea534a4fb182732";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ fastcdr fastdds rcpputils rcutils rosidl-dynamic-typesupport ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "FastDDS serialization support implementation for use with C/C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
