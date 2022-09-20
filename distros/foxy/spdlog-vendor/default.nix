
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, spdlog }:
buildRosPackage {
  pname = "ros-foxy-spdlog-vendor";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/spdlog_vendor-release/archive/release/foxy/spdlog_vendor/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "9cb16123ea0cd28d9405e155011697577c1aca151b898d9a28afa63d53ce8442";
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
