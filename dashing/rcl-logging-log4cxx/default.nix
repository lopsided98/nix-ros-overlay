
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-lint-common, ament-cmake-gmock, launch-testing, ament-cmake-gtest, python3Packages, ament-cmake-ros, ament-lint-auto, rcutils, log4cxx }:
buildRosPackage {
  pname = "ros-dashing-rcl-logging-log4cxx";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/dashing/rcl_logging_log4cxx/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "12669e71aa1fb01b2599471c16d64ef5e148a1b64f0d734615c1fb0adbae6c68";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils log4cxx ];
  checkInputs = [ ament-cmake-pytest ament-lint-common ament-cmake-gmock launch-testing ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ rcutils log4cxx ];
  nativeBuildInputs = [ python3Packages.empy ament-cmake-ros ];

  meta = {
    description = ''C API providing common interface to a shared library wrapping 3rd party loggers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
