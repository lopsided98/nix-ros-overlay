
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, canopen-402-driver, canopen-base-driver, canopen-core, canopen-interfaces, canopen-proxy-driver, lely-core-libraries }:
buildRosPackage {
  pname = "ros-jazzy-canopen";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/jazzy/canopen/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "15468b67c2122e48c41b45032428ae82acd5dc84d412ebc39636ad969a3de8eb";
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
