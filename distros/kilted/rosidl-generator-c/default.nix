
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-python, ament-cmake-ros-core, ament-index-python, ament-lint-auto, ament-lint-common, python3, rcutils, rosidl-cli, rosidl-cmake, rosidl-generator-type-description, rosidl-parser, rosidl-pycommon, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-kilted-rosidl-generator-c";
  version = "4.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/kilted/rosidl_generator_c/4.9.7-1.tar.gz";
    name = "4.9.7-1.tar.gz";
    sha256 = "8aa778970ba2e870bf8f0610f1412d9eed7c4243d4ba0635a6dd13fe962c1413";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python python3 rcutils rosidl-cli rosidl-cmake rosidl-generator-type-description rosidl-parser rosidl-pycommon rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake ament-cmake-core ament-cmake-python ament-cmake-ros-core python3 rosidl-pycommon ];

  meta = {
    description = "Generate the ROS interfaces in C.";
    license = with lib.licenses; [ asl20 ];
  };
}
