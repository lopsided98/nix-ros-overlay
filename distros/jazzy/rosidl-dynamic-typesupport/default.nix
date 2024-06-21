
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcutils, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-dynamic-typesupport";
  version = "0.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dynamic_typesupport-release/archive/release/jazzy/rosidl_dynamic_typesupport/0.1.2-3.tar.gz";
    name = "0.1.2-3.tar.gz";
    sha256 = "227d228ca85ad80c387f1b0ea929df5579f549667c1d001eb6f024577f32fe99";
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
