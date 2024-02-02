
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, canopen-402-driver, canopen-base-driver, canopen-core, canopen-interfaces, canopen-proxy-driver, lely-core-libraries }:
buildRosPackage {
  pname = "ros-rolling-canopen";
  version = "0.2.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen/0.2.8-1.tar.gz";
    name = "0.2.8-1.tar.gz";
    sha256 = "057d2c0019ebdc19f59b69c3d052b9af319c715bdb73d272cd4e535def432e6b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ canopen-402-driver canopen-base-driver canopen-core canopen-interfaces canopen-proxy-driver lely-core-libraries ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta-package aggregating the ros2_canopen packages and documentation'';
    license = with lib.licenses; [ asl20 ];
  };
}
