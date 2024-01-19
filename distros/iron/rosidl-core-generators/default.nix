
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-generator-py, rosidl-typesupport-c, rosidl-typesupport-cpp, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-iron-rosidl-core-generators";
  version = "0.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_core-release/archive/release/iron/rosidl_core_generators/0.1.1-3.tar.gz";
    name = "0.1.1-3.tar.gz";
    sha256 = "7c9c44921c3aa0f0d0642e508edcabcf22bf027e1d61b3431c7428408c21b336";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-generator-py rosidl-typesupport-c rosidl-typesupport-cpp rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-core rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-generator-py rosidl-typesupport-c rosidl-typesupport-cpp rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];

  meta = {
    description = ''A configuration package defining core ROS interface generators.'';
    license = with lib.licenses; [ asl20 ];
  };
}
