
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, spdlog }:
buildRosPackage {
  pname = "ros-kilted-spdlog-vendor";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/spdlog_vendor-release/archive/release/kilted/spdlog_vendor/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "f52d154391d65a4dffc8350eafae0a0a3ab01f13147a8ac31f9268b1e145ab91";
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
