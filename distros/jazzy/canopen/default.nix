
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, canopen-402-driver, canopen-base-driver, canopen-core, canopen-interfaces, canopen-proxy-driver, lely-core-libraries }:
buildRosPackage {
  pname = "ros-jazzy-canopen";
  version = "0.2.9-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/jazzy/canopen/0.2.9-2.tar.gz";
    name = "0.2.9-2.tar.gz";
    sha256 = "319fdf755d138d13e7614ccf4bd2202df9df9640a3185115ddbc30b231160869";
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
