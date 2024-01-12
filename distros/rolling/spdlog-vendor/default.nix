
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, spdlog }:
buildRosPackage {
  pname = "ros-rolling-spdlog-vendor";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/spdlog_vendor-release/archive/release/rolling/spdlog_vendor/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "03cc70cc20dfbc9115b2a4735e5fddde1a054f96fb8ce778179e4880c89732ad";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ spdlog ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = ''Wrapper around spdlog, providing nothing but a dependency on spdlog, on some systems.
    On others, it provides an ExternalProject build of spdlog.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
