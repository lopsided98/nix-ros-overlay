
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, rcutils, rmw }:
buildRosPackage {
  pname = "ros-rolling-rmw-security-common";
  version = "7.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/rolling/rmw_security_common/7.9.0-1.tar.gz";
    name = "7.9.0-1.tar.gz";
    sha256 = "7132720ec93b708090b4b19e83784aa75ed8b8a22594308dad3e8e8a321746d5";
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
