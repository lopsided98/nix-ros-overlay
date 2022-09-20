
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch-testing, log4cxx, python3Packages, rcutils }:
buildRosPackage {
  pname = "ros-foxy-rcl-logging-log4cxx";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/foxy/rcl_logging_log4cxx/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "55d0928eff4e7e573a3fcb13b49319c6321fed83319a720d7dd21e228d641a18";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros python3Packages.empy ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing ];
  propagatedBuildInputs = [ log4cxx rcutils ];
  nativeBuildInputs = [ ament-cmake-ros python3Packages.empy ];

  meta = {
    description = ''C API providing common interface to a shared library wrapping 3rd party loggers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
