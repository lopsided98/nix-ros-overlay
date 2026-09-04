
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, rcutils, rmw }:
buildRosPackage {
  pname = "ros-lyrical-rmw-security-common";
  version = "7.10.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/lyrical/rmw_security_common/7.10.2-3.tar.gz";
    name = "7.10.2-3.tar.gz";
    sha256 = "5ca4fdd6a7f46053971d65d6a9bc5c812cfa31e361e48c8a4a6adb97e8d7ff6a";
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
