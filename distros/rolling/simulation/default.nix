
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-base, ros-gz-bridge, ros-gz-image, ros-gz-interfaces, ros-gz-sim }:
buildRosPackage {
  pname = "ros-rolling-simulation";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/rolling/simulation/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "eb793d642d48fe9ce674462bb5f5f015f8c261d8bf18beff97156aa0db423d6f";
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
