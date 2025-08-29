
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, grpc, gtest, openssl, pkg-config, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-humble-kuka-external-control-sdk";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_external_control_sdk-release/archive/release/humble/kuka_external_control_sdk/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "083ddb5e91f289ceae56189c406c83e69cc01ba8b6b97fbd7b126ebaf6ff6bdc";
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
