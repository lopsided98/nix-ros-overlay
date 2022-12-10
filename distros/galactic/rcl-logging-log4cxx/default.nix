
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch-testing, log4cxx, python3Packages, rcl-logging-interface, rcutils }:
buildRosPackage {
  pname = "ros-galactic-rcl-logging-log4cxx";
  version = "2.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/galactic/rcl_logging_log4cxx/2.1.5-1.tar.gz";
    name = "2.1.5-1.tar.gz";
    sha256 = "c7eeb3d1d45be208938770ed6f5505dafb5a52ee79968fd4f3c6f3cb3f8214ad";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros python3Packages.empy ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing ];
  propagatedBuildInputs = [ log4cxx rcl-logging-interface rcutils ];
  nativeBuildInputs = [ ament-cmake-ros python3Packages.empy ];

  meta = {
    description = ''C API providing common interface to a shared library wrapping 3rd party loggers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
