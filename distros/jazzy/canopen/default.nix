
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, canopen-402-driver, canopen-base-driver, canopen-core, canopen-interfaces, canopen-proxy-driver, lely-core-libraries }:
buildRosPackage {
  pname = "ros-jazzy-canopen";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/jazzy/canopen/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "db6c0e947de352312389b9cc3acb875eabee9cfd3c3dd7883e22932a6bc2cc9b";
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
