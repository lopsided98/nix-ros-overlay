
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, spdlog }:
buildRosPackage {
  pname = "ros-jazzy-spdlog-vendor";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/spdlog_vendor-release/archive/release/jazzy/spdlog_vendor/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "4f88fee8ca69728531c0b74ffab451ba193fc2b97ad208700862dd4461d2c3e6";
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
