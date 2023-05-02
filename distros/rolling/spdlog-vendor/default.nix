
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, spdlog }:
buildRosPackage {
  pname = "ros-rolling-spdlog-vendor";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/spdlog_vendor-release/archive/release/rolling/spdlog_vendor/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "47d9a83e0ba2e7b1b54200d7d891171c355130e4570eb3fea6ce921edb7fec58";
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
