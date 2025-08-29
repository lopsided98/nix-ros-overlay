
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, kuka-external-control-sdk }:
buildRosPackage {
  pname = "ros-humble-kuka-external-control-sdk-examples";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_external_control_sdk-release/archive/release/humble/kuka_external_control_sdk_examples/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "5a49f33ccd7d43364836af9bdf4cdc7e98ffa9a3693dc37062839b0c86deb0f8";
  };

  buildType = "ament_cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ ament-cmake kuka-external-control-sdk ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Examples for using KUKA external control SDK";
    license = with lib.licenses; [ asl20 ];
  };
}
