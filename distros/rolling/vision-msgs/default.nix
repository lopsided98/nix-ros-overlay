
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-vision-msgs";
  version = "4.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_msgs-release/archive/release/rolling/vision_msgs/4.1.0-2.tar.gz";
    name = "4.1.0-2.tar.gz";
    sha256 = "d8092e61263b55199e3e4b03f5e59ef5adb7a5b934771f553516d7bb7e28b97f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages for interfacing with various computer vision pipelines, such as
    object detectors.'';
    license = with lib.licenses; [ asl20 asl20 ];
  };
}
