
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, rcutils, rmw }:
buildRosPackage {
  pname = "ros-kilted-rmw-security-common";
  version = "7.8.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/kilted/rmw_security_common/7.8.2-2.tar.gz";
    name = "7.8.2-2.tar.gz";
    sha256 = "4508f0b062859d57b2519f3fe512f113b953855a0c7c42d048ffa252f74392ae";
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
