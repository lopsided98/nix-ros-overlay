
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, ros-environment, rosidl-cmake, rosidl-generator-c, rosidl-parser, rosidl-typesupport-c, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-humble-rosidl-generator-rs";
  version = "0.4.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_rust-release/archive/release/humble/rosidl_generator_rs/0.4.12-1.tar.gz";
    name = "0.4.12-1.tar.gz";
    sha256 = "3f6852e90496ccf897719da19fd547d9ca46c030356537025f8ea334ada665f8";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-cmake rosidl-generator-c ];
  propagatedBuildInputs = [ ament-cmake ros-environment rosidl-cmake rosidl-generator-c rosidl-parser rosidl-typesupport-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake ros-environment rosidl-cmake rosidl-typesupport-c rosidl-typesupport-interface ];

  meta = {
    description = "Generate the ROS interfaces in Rust.";
    license = with lib.licenses; [ asl20 ];
  };
}
