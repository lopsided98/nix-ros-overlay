
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcutils, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-rolling-rosidl-dynamic-typesupport";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dynamic_typesupport-release/archive/release/rolling/rosidl_dynamic_typesupport/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "69e1e03b2561d358b602babf0341cba2a5b0dfe081fbd5695032fc058d733907";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ rcutils rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Unified serialization support interface for dynamic typesupport in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
