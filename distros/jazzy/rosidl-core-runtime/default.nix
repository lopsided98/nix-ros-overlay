
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-generator-py, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-c, rosidl-typesupport-cpp, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-core-runtime";
  version = "0.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_core-release/archive/release/jazzy/rosidl_core_runtime/0.2.0-3.tar.gz";
    name = "0.2.0-3.tar.gz";
    sha256 = "ac672b350d02fe8b654024c30f6f9225b40d4ecbdcb4bccf9368cba3776f9298";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-generator-py rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-c rosidl-typesupport-cpp rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A configuration package defining runtime dependencies for core ROS interfaces.";
    license = with lib.licenses; [ asl20 ];
  };
}
