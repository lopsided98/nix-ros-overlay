
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, spdlog }:
buildRosPackage {
  pname = "ros-galactic-spdlog-vendor";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/spdlog_vendor-release/archive/release/galactic/spdlog_vendor/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "2b71709aba3cfa61dc77cd650b009f4806c1bee8b1dc9c91607c2c1bf196beed";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ spdlog ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around spdlog, providing nothing but a dependency on spdlog, on some systems.
    On others, it provides an ExternalProject build of spdlog.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
