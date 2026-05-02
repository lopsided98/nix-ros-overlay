
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-base, ros-gz-bridge, ros-gz-image, ros-gz-interfaces, ros-gz-sim }:
buildRosPackage {
  pname = "ros-rolling-simulation";
  version = "0.13.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/rolling/simulation/0.13.0-2.tar.gz";
    name = "0.13.0-2.tar.gz";
    sha256 = "9e0e162555b23b84ddc855cb654a1e082ebd8be11a5dc817eed2c1dd82afcf9e";
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
