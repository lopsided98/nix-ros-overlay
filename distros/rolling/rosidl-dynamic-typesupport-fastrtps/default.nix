
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, fastcdr, fastrtps, fastrtps-cmake-module, rcutils, rosidl-dynamic-typesupport }:
buildRosPackage {
  pname = "ros-rolling-rosidl-dynamic-typesupport-fastrtps";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dynamic_typesupport_fastrtps-release/archive/release/rolling/rosidl_dynamic_typesupport_fastrtps/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "4db40019b639d0e0ef056ae57586ba7398fec3a99ef97535d61feab546da5beb";
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
