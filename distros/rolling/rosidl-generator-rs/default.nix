
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, ros-environment, rosidl-generator-c, rosidl-parser, rosidl-pycommon, rosidl-typesupport-c, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-rolling-rosidl-generator-rs";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_rust-release/archive/release/rolling/rosidl_generator_rs/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "2488c7d8a784dabc4f68806740e3274cb17890096f90bd3c2f6caf50c1320959";
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
