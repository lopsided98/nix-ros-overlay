
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-vision-msgs";
  version = "4.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_msgs-release/archive/release/humble/vision_msgs/4.0.0-2.tar.gz";
    name = "4.0.0-2.tar.gz";
    sha256 = "e55b534da7dc4e01ab989080bf1252086ea9b1a48bc80f320dedd697258a8d9e";
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
