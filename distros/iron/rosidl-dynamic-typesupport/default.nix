
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcutils, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-iron-rosidl-dynamic-typesupport";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dynamic_typesupport-release/archive/release/iron/rosidl_dynamic_typesupport/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "720020584762a48310e863ca7bc0556e1024519f30b8345a6dd54e5201c85755";
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
