
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-slg-msgs";
  version = "3.9.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/slg_msgs-release/archive/release/kilted/slg_msgs/3.9.1-2.tar.gz";
    name = "3.9.1-2.tar.gz";
    sha256 = "c0cbac6b3ea0b7cdcd6911f22777860baf0b1f8266ca010214234515825091a4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides classes and messages to interact with laser related geometry.";
    license = with lib.licenses; [ asl20 ];
  };
}
