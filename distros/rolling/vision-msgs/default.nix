
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-vision-msgs";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_msgs-release/archive/release/rolling/vision_msgs/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "844fd71bcaa9819e775c81306af334a5bf2fb023d1a587812dc4e487966e534e";
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
