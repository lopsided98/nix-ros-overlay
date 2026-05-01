
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros-core, fastcdr, fastdds, rcpputils, rcutils, rosidl-dynamic-typesupport }:
buildRosPackage {
  pname = "ros-lyrical-rosidl-dynamic-typesupport-fastrtps";
  version = "0.5.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dynamic_typesupport_fastrtps-release/archive/release/lyrical/rosidl_dynamic_typesupport_fastrtps/0.5.1-3.tar.gz";
    name = "0.5.1-3.tar.gz";
    sha256 = "b60dedbe2c5cb8815118a92d833623bf28f3d407a5dd0a34986fd4722b1709aa";
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
