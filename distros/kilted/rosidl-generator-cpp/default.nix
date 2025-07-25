
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-index-python, ament-lint-auto, ament-lint-common, python3, rosidl-cli, rosidl-cmake, rosidl-generator-c, rosidl-generator-type-description, rosidl-parser, rosidl-pycommon, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-kilted-rosidl-generator-cpp";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/kilted/rosidl_generator_cpp/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "5c673065e8041f881c8d4bc6b00d87d8434f9d06a6e8f8137ff20ded1ec6300f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python python3 rosidl-cli rosidl-cmake rosidl-generator-c rosidl-generator-type-description rosidl-parser rosidl-pycommon rosidl-runtime-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-core python3 rosidl-pycommon ];

  meta = {
    description = "Generate the ROS interfaces in C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
