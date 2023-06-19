
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcutils, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-iron-rosidl-dynamic-typesupport";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dynamic_typesupport-release/archive/release/iron/rosidl_dynamic_typesupport/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "96b13500a676ec036564bc6ad65f89881ac96ca04f9c1cc2fcb0a3909d5f1583";
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
