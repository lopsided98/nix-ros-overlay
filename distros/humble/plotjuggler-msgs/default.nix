
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-plotjuggler-msgs";
  version = "0.2.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler_msgs-release/archive/release/humble/plotjuggler_msgs/0.2.3-3.tar.gz";
    name = "0.2.3-3.tar.gz";
    sha256 = "16dfb632d8a0b7a03987cc581ffe9d05213c45e30c056f2676db1b17f502c51f";
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
