
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-plotjuggler-msgs";
  version = "0.2.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler_msgs-release/archive/release/rolling/plotjuggler_msgs/0.2.3-2.tar.gz";
    name = "0.2.3-2.tar.gz";
    sha256 = "a3cc0e4b7a2b2cd4e5f32e7e51c09da6214d8c6a524a75b4ed64e556225659ad";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Special Messages for PlotJuggler'';
    license = with lib.licenses; [ mit ];
  };
}
