
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, canopen-402-driver, canopen-base-driver, canopen-core, canopen-interfaces, canopen-proxy-driver, lely-core-libraries }:
buildRosPackage {
  pname = "ros-rolling-canopen";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "f3c1b6b3450e6138c76f4bb54333600d9bc93e19c26a9250f6cdce8007769501";
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
