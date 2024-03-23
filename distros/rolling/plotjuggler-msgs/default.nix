
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-plotjuggler-msgs";
  version = "0.2.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler_msgs-release/archive/release/rolling/plotjuggler_msgs/0.2.3-4.tar.gz";
    name = "0.2.3-4.tar.gz";
    sha256 = "fe1e19624e4cca1fc6b971313368b3e1652a350c4b0bc6642a9af4936bf62776";
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
