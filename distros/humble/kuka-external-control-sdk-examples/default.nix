
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, kuka-external-control-sdk }:
buildRosPackage {
  pname = "ros-humble-kuka-external-control-sdk-examples";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_external_control_sdk-release/archive/release/humble/kuka_external_control_sdk_examples/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "c812e6f7a2769ba0e6a0b466c9c881aec00aa8a894de2dacc22931cb458d82f9";
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
