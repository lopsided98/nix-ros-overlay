
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, grpc, gtest, openssl, pkg-config }:
buildRosPackage {
  pname = "ros-humble-kuka-external-control-sdk";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_external_control_sdk-release/archive/release/humble/kuka_external_control_sdk/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "7136b2b216aa6887feefeb12541b113ffa45fb9a00f5dada9dcb254706f3f611";
  };

  buildType = "ament_cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ ament-cmake grpc openssl pkg-config ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Client libraries for external control interfaces of KUKA";
    license = with lib.licenses; [ asl20 ];
  };
}
