
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, ros-environment, rosidl-generator-c, rosidl-parser, rosidl-pycommon, rosidl-typesupport-c, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-kilted-rosidl-generator-rs";
  version = "0.4.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_rust-release/archive/release/kilted/rosidl_generator_rs/0.4.9-1.tar.gz";
    name = "0.4.9-1.tar.gz";
    sha256 = "66ac9a4fd6f393d2a800b43bf3757dc903f7ac5f559157249d61352c7a56462a";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-generator-c rosidl-pycommon ];
  propagatedBuildInputs = [ ament-cmake ros-environment rosidl-generator-c rosidl-parser rosidl-pycommon rosidl-typesupport-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake ros-environment rosidl-pycommon rosidl-typesupport-c rosidl-typesupport-interface ];

  meta = {
    description = "Generate the ROS interfaces in Rust.";
    license = with lib.licenses; [ asl20 ];
  };
}
