
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros-core, fastcdr, fastdds, rcpputils, rcutils, rosidl-dynamic-typesupport }:
buildRosPackage {
  pname = "ros-kilted-rosidl-dynamic-typesupport-fastrtps";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dynamic_typesupport_fastrtps-release/archive/release/kilted/rosidl_dynamic_typesupport_fastrtps/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "ea2aaff65b1b2b94b535a886b6ce4dd4d3e81c4bbf6c286bb3f4e271ff2e50f0";
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
