
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, fastcdr, fastrtps, fastrtps-cmake-module, rcutils, rosidl-dynamic-typesupport }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-dynamic-typesupport-fastrtps";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dynamic_typesupport_fastrtps-release/archive/release/jazzy/rosidl_dynamic_typesupport_fastrtps/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "bb76a3e5faa2e22aadf433bacb1cf85a5e6ead751484c1c7989e35509233c972";
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
