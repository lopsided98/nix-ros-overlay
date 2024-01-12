
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-generator-py, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-c, rosidl-typesupport-cpp, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-iron-rosidl-core-runtime";
  version = "0.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_core-release/archive/release/iron/rosidl_core_runtime/0.1.1-3.tar.gz";
    name = "0.1.1-3.tar.gz";
    sha256 = "e474920ac145ccd2293607d55d9b0458401135dec003b003c282f2197ead17f1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-generator-py rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-c rosidl-typesupport-cpp rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A configuration package defining runtime dependencies for core ROS interfaces.'';
    license = with lib.licenses; [ asl20 ];
  };
}
