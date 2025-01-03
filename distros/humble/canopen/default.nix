
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, canopen-402-driver, canopen-base-driver, canopen-core, canopen-interfaces, canopen-proxy-driver, lely-core-libraries }:
buildRosPackage {
  pname = "ros-humble-canopen";
  version = "0.2.11-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/humble/canopen/0.2.11-2.tar.gz";
    name = "0.2.11-2.tar.gz";
    sha256 = "4801215cbd7ed69c8719bf4bb3bf099c8f19ef6f28c42e2d2b1782417331c02c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ canopen-402-driver canopen-base-driver canopen-core canopen-interfaces canopen-proxy-driver lely-core-libraries ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta-package aggregating the ros2_canopen packages and documentation";
    license = with lib.licenses; [ asl20 ];
  };
}
