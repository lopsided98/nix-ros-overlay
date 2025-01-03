
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-vision-msgs";
  version = "4.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_msgs-release/archive/release/jazzy/vision_msgs/4.1.1-3.tar.gz";
    name = "4.1.1-3.tar.gz";
    sha256 = "ba4dbe181ba1bd8387d19503452348085cf5e94b81d2a0dd58e27aea439d6bc8";
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
