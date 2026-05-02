
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-buffer-py, rosidl-generator-py, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-c, rosidl-typesupport-cpp, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-rolling-rosidl-core-runtime";
  version = "0.4.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_core-release/archive/release/rolling/rosidl_core_runtime/0.4.3-2.tar.gz";
    name = "0.4.3-2.tar.gz";
    sha256 = "4f1b01e756d9ae0c24960d2616175a2a8132a2dd14dc0cb97bab8d66c326ba0f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-buffer-py rosidl-generator-py rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-c rosidl-typesupport-cpp rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A configuration package defining runtime dependencies for core ROS interfaces.";
    license = with lib.licenses; [ asl20 ];
  };
}
