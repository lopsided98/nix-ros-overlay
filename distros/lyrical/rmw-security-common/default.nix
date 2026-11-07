
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, rcutils, rmw }:
buildRosPackage {
  pname = "ros-lyrical-rmw-security-common";
  version = "7.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/lyrical/rmw_security_common/7.10.3-1.tar.gz";
    name = "7.10.3-1.tar.gz";
    sha256 = "670976c695df1282214f026526c0712fc5b767b8b63d032901bc20d6bb74c5e4";
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
