
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcutils, spdlog, spdlog-vendor }:
buildRosPackage {
  pname = "ros-eloquent-rcl-logging-spdlog";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/eloquent/rcl_logging_spdlog/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "c825f1b7f8454e6d1db877d87f9ceadfa58f57d9c73b29a4b0c76a31a96cc8b6";
  };

  buildType = "ament_cmake";
  buildInputs = [ spdlog spdlog-vendor ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcutils ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Implementation of rcl_logging API for an spdlog backend.'';
    license = with lib.licenses; [ asl20 ];
  };
}
