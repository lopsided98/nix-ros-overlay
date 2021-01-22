
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcutils, spdlog, spdlog-vendor }:
buildRosPackage {
  pname = "ros-foxy-rcl-logging-spdlog";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/foxy/rcl_logging_spdlog/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "7399d2d8559620f9b27942a23d2bf7b005c67250bb7c443ed0cfecbba65c0c4d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcutils spdlog spdlog-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Implementation of rcl_logging API for an spdlog backend.'';
    license = with lib.licenses; [ asl20 ];
  };
}
