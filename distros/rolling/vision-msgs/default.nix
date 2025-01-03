
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-vision-msgs";
  version = "4.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_msgs-release/archive/release/rolling/vision_msgs/4.1.1-2.tar.gz";
    name = "4.1.1-2.tar.gz";
    sha256 = "e2e122d0d326cbb19fd8f5d6399a4a1c10de52dd4d6c20567d174b38f9e63a24";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages for interfacing with various computer vision pipelines, such as
    object detectors.";
    license = with lib.licenses; [ asl20 asl20 ];
  };
}
