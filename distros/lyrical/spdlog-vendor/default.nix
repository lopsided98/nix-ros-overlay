
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, spdlog }:
buildRosPackage {
  pname = "ros-lyrical-spdlog-vendor";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/spdlog_vendor-release/archive/release/lyrical/spdlog_vendor/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "e7271c1b535311d0ad36461376ae750062575d2b0d375fb4ded86e8faa9763a8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ spdlog ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Wrapper around spdlog, providing nothing but a dependency on spdlog, on some systems.
    On others, it provides an ExternalProject build of spdlog.";
    license = with lib.licenses; [ asl20 mit ];
  };
}
