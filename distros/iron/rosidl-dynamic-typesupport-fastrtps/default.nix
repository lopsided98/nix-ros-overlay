
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, fastcdr, fastrtps, fastrtps-cmake-module, rcutils, rosidl-dynamic-typesupport }:
buildRosPackage {
  pname = "ros-iron-rosidl-dynamic-typesupport-fastrtps";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dynamic_typesupport_fastrtps-release/archive/release/iron/rosidl_dynamic_typesupport_fastrtps/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "a6cc59a7c46bf06c7ef6ecd295ca0aa8cffd988b28475c2b1ef8472d0af2dfc6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros fastrtps-cmake-module ];
  propagatedBuildInputs = [ fastcdr fastrtps rcutils rosidl-dynamic-typesupport ];
  nativeBuildInputs = [ ament-cmake-ros fastrtps-cmake-module ];

  meta = {
    description = ''FastDDS serialization support implementation for use with C/C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
