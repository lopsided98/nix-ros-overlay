
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-plotjuggler-msgs";
  version = "0.2.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler_msgs-release/archive/release/kilted/plotjuggler_msgs/0.2.3-5.tar.gz";
    name = "0.2.3-5.tar.gz";
    sha256 = "2119290077bbf85da41c919c3b661f2ea21f132aa0b9e8566b90e41c5eccad52";
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
