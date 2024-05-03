
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, fastcdr, fastrtps, fastrtps-cmake-module, rcutils, rosidl-dynamic-typesupport }:
buildRosPackage {
  pname = "ros-rolling-rosidl-dynamic-typesupport-fastrtps";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dynamic_typesupport_fastrtps-release/archive/release/rolling/rosidl_dynamic_typesupport_fastrtps/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "9c3c665c037adfbe9d16955549279b7d799ece22b255fc2967220bc20cbe87d1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros fastrtps-cmake-module ];
  propagatedBuildInputs = [ fastcdr fastrtps rcutils rosidl-dynamic-typesupport ];
  nativeBuildInputs = [ ament-cmake-ros fastrtps-cmake-module ];

  meta = {
    description = "FastDDS serialization support implementation for use with C/C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
