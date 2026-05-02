
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-slg-msgs";
  version = "3.9.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/slg_msgs-release/archive/release/rolling/slg_msgs/3.9.1-2.tar.gz";
    name = "3.9.1-2.tar.gz";
    sha256 = "385bfe62a296ac8024e8734b611e78ea336799097c0cd5aff202e65b27a16e53";
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
