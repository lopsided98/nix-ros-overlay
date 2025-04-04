
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-slg-msgs";
  version = "3.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/slg_msgs-release/archive/release/jazzy/slg_msgs/3.9.2-1.tar.gz";
    name = "3.9.2-1.tar.gz";
    sha256 = "ca59b2db3d3f1ef3a6f3012ea2126059ac1e13ee33e103b2843d48d0afbcbfad";
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
