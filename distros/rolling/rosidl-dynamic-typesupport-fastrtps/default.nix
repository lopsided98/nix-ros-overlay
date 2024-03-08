
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, fastcdr, fastrtps, fastrtps-cmake-module, rcutils, rosidl-dynamic-typesupport }:
buildRosPackage {
  pname = "ros-rolling-rosidl-dynamic-typesupport-fastrtps";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dynamic_typesupport_fastrtps-release/archive/release/rolling/rosidl_dynamic_typesupport_fastrtps/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "fbdf894771f18661732dc342a0c7f14f90b390d9529f3a227d15267db727cb3f";
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
