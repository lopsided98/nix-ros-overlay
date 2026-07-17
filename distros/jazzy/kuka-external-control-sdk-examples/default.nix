
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, kuka-external-control-sdk }:
buildRosPackage {
  pname = "ros-jazzy-kuka-external-control-sdk-examples";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_external_control_sdk-release/archive/release/jazzy/kuka_external_control_sdk_examples/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "cc4563e15f8ed5b8e9625e899d7fd7eae2e37b253fc470a6457f8f1cb4c0d0cc";
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
