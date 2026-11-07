
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, python3, rcutils, rosidl-cli, rosidl-cmake, rosidl-generator-type-description, rosidl-parser, rosidl-pycommon, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-generator-c";
  version = "4.6.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/jazzy/rosidl_generator_c/4.6.10-1.tar.gz";
    name = "4.6.10-1.tar.gz";
    sha256 = "fa34c53efa6fad8f9c32802e7e45e40e9f7deaf4cbe4ec6cd2a45510491c6905";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python python3 rcutils rosidl-cli rosidl-cmake rosidl-generator-type-description rosidl-parser rosidl-pycommon rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-python ament-cmake-ros python3 rosidl-pycommon ];

  meta = {
    description = "Generate the ROS interfaces in C.";
    license = with lib.licenses; [ asl20 ];
  };
}
