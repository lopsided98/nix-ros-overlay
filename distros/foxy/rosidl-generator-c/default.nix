
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-cmake-python, ament-cmake-ros, ament-lint-auto, ament-lint-common, rosidl-cmake, rosidl-parser, rosidl-runtime-c, rosidl-typesupport-interface, test-interface-files }:
buildRosPackage {
  pname = "ros-foxy-rosidl-generator-c";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/foxy/rosidl_generator_c/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "24cd7a26955145af3519b67d30db78129cc1de3c0281de29e6efbf26ccfcea97";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-cmake rosidl-runtime-c test-interface-files ];
  propagatedBuildInputs = [ ament-cmake-core rosidl-cmake rosidl-parser rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros ];

  meta = {
    description = ''Generate the ROS interfaces in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
