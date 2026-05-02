
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-plotjuggler-msgs";
  version = "0.2.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler_msgs-release/archive/release/rolling/plotjuggler_msgs/0.2.3-5.tar.gz";
    name = "0.2.3-5.tar.gz";
    sha256 = "3ed9681e5946f1e9ed90ac5b21a499658a2829074108b8a8277480ad3b72ed04";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Special Messages for PlotJuggler";
    license = with lib.licenses; [ mit ];
  };
}
