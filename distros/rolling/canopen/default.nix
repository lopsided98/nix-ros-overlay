
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, canopen-402-driver, canopen-base-driver, canopen-core, canopen-interfaces, canopen-proxy-driver, lely-core-libraries }:
buildRosPackage {
  pname = "ros-rolling-canopen";
  version = "0.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen/0.3.2-2.tar.gz";
    name = "0.3.2-2.tar.gz";
    sha256 = "0bd28fdc40ef2709bb69739a988d0544c6124f11e794cfc14de89ab4e9736ab4";
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
