
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, cmake, elfutils }:
buildRosPackage {
  pname = "ros-jazzy-backward-ros";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/backward_ros-release/archive/release/jazzy/backward_ros/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "e6adb47912e4c48a057f06c9bb30d86a24e3f4e31cf46205799d038c52277a72";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ elfutils ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The backward_ros package is a ros wrapper of backward-cpp from https://github.com/bombela/backward-cpp";
    license = with lib.licenses; [ mit ];
  };
}
