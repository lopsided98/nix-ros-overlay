
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-base, ros-gz-bridge, ros-gz-image, ros-gz-interfaces, ros-gz-sim }:
buildRosPackage {
  pname = "ros-lyrical-simulation";
  version = "0.13.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/lyrical/simulation/0.13.0-3.tar.gz";
    name = "0.13.0-3.tar.gz";
    sha256 = "c93dbb548e7310bdb0930109de1e9d6cc9b8450501e91c4cfbecc2f2794ed496";
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
