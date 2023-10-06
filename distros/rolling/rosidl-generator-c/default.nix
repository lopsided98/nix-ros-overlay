
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, python3, rcutils, rosidl-cli, rosidl-cmake, rosidl-generator-type-description, rosidl-parser, rosidl-pycommon, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-rolling-rosidl-generator-c";
  version = "4.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_generator_c/4.4.1-1.tar.gz";
    name = "4.4.1-1.tar.gz";
    sha256 = "173422a90788645b1586454db069b8b31f73b807c46dc54c395f06d197e27bc4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python python3 rcutils rosidl-cli rosidl-cmake rosidl-generator-type-description rosidl-parser rosidl-pycommon rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-python ament-cmake-ros python3 rosidl-pycommon ];

  meta = {
    description = ''Generate the ROS interfaces in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
