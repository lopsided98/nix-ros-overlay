
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, grpc, gtest, openssl, pkg-config, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-jazzy-kuka-external-control-sdk";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_external_control_sdk-release/archive/release/jazzy/kuka_external_control_sdk/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "b8c62d06d6743daa9032148e224fb064f14c724646abbc10120606f6eae99753";
  };

  buildType = "ament_cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ ament-cmake grpc openssl pkg-config tinyxml2-vendor ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Client libraries for external control interfaces of KUKA";
    license = with lib.licenses; [ asl20 ];
  };
}
