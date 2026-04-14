
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, rcutils, rmw }:
buildRosPackage {
  pname = "ros-rolling-rmw-security-common";
  version = "7.10.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/rolling/rmw_security_common/7.10.1-3.tar.gz";
    name = "7.10.1-3.tar.gz";
    sha256 = "e7f8a6622781e3be6cc6d6be8793b2a43263bffeeb9c18fd58e6f624f7ef320d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcutils rmw ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Define a common rmw secutiry utils";
    license = with lib.licenses; [ asl20 ];
  };
}
