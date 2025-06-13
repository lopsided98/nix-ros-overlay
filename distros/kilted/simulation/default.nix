
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-base, ros-gz-bridge, ros-gz-image, ros-gz-interfaces, ros-gz-sim }:
buildRosPackage {
  pname = "ros-kilted-simulation";
  version = "0.12.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/kilted/simulation/0.12.0-2.tar.gz";
    name = "0.12.0-2.tar.gz";
    sha256 = "13ba348a0fca577f6747e28107a392577d28b0dabfa50b4fd6b9e4b7c472384e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ros-base ros-gz-bridge ros-gz-image ros-gz-interfaces ros-gz-sim ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package which extends 'ros_base' and includes simulation packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
