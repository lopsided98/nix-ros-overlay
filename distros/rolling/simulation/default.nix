
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-base, ros-gz-bridge, ros-gz-image, ros-gz-interfaces, ros-gz-sim }:
buildRosPackage {
  pname = "ros-rolling-simulation";
  version = "0.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/rolling/simulation/0.13.0-1.tar.gz";
    name = "0.13.0-1.tar.gz";
    sha256 = "a4bc3ccfafe525eae83b018e7aec43d6f02d21bbe4a719677b445afc2da4d413";
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
