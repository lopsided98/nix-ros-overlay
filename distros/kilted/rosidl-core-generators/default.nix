
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-generator-py, rosidl-typesupport-c, rosidl-typesupport-cpp, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-kilted-rosidl-core-generators";
  version = "0.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_core-release/archive/release/kilted/rosidl_core_generators/0.3.1-2.tar.gz";
    name = "0.3.1-2.tar.gz";
    sha256 = "ea2349797293f8f2173b945803c620e36fd3b927b1dca4176680e7933658d52b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-generator-py rosidl-typesupport-c rosidl-typesupport-cpp rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-core rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-generator-py rosidl-typesupport-c rosidl-typesupport-cpp rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];

  meta = {
    description = "A configuration package defining core ROS interface generators.";
    license = with lib.licenses; [ asl20 ];
  };
}
