
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcutils, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-rolling-rosidl-dynamic-typesupport";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dynamic_typesupport-release/archive/release/rolling/rosidl_dynamic_typesupport/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "fec9210acc61d5b21f43b9a78ac36634054d30608a37abfcb827145af36cf60e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ rcutils rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Unified serialization support interface for dynamic typesupport in C.";
    license = with lib.licenses; [ asl20 ];
  };
}
