
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch-testing, log4cxx, python3Packages, rcl-logging-interface, rcutils }:
buildRosPackage {
  pname = "ros-galactic-rcl-logging-log4cxx";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/galactic/rcl_logging_log4cxx/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "4b7cb48398670396eb3209addcd6b9a813e8fa75b1ae226f29e9a4c710c2c9b7";
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
