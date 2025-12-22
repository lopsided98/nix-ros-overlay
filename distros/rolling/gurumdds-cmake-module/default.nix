
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_gurumdds-3, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-gurumdds-cmake-module";
  version = "6.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_gurumdds-release/archive/release/rolling/gurumdds_cmake_module/6.0.1-2.tar.gz";
    name = "6.0.1-2.tar.gz";
    sha256 = "fa80fcda7612b20b46af0d0cb6acbc0e689ecc3fe6a65fe145190f7a7270671e";
  };

  buildType = "ament_cmake";
  buildInputs = [ _unresolved_gurumdds-3.2 ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provide CMake module to find GurumNetworks GurumDDS.";
    license = with lib.licenses; [ asl20 ];
  };
}
