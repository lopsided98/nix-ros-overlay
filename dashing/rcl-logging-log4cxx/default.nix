
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-cmake-ros, rcutils, launch-testing, ament-lint-common, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-gmock, log4cxx, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rcl-logging-log4cxx";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/dashing/rcl_logging_log4cxx/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "12669e71aa1fb01b2599471c16d64ef5e148a1b64f0d734615c1fb0adbae6c68";
  };

  buildType = "ament_cmake";
  buildInputs = [ log4cxx rcutils ];
  checkInputs = [ launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-cmake-gmock ament-lint-auto ];
  propagatedBuildInputs = [ log4cxx rcutils ];
  nativeBuildInputs = [ ament-cmake-ros python3Packages.empy ];

  meta = {
    description = ''C API providing common interface to a shared library wrapping 3rd party loggers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
