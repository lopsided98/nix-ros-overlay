
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-mimick-vendor";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mimick_vendor-release/archive/release/rolling/mimick_vendor/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "685b1735c87b823fb312cdcc5cc5614de10e8bb261ab66ff22c85fe7364044e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Wrapper around mimick, it provides an ExternalProject build of mimick.";
    license = with lib.licenses; [ asl20 mit ];
  };
}
