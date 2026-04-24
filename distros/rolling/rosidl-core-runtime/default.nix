
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-buffer-py, rosidl-generator-py, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-c, rosidl-typesupport-cpp, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-rolling-rosidl-core-runtime";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_core-release/archive/release/rolling/rosidl_core_runtime/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "1b0d036fdf717c911aa5b90fe809c7346d22fa28d6604ec36a84c7658ca9b244";
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
