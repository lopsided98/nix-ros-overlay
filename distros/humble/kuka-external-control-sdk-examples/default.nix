
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, kuka-external-control-sdk }:
buildRosPackage {
  pname = "ros-humble-kuka-external-control-sdk-examples";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_external_control_sdk-release/archive/release/humble/kuka_external_control_sdk_examples/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "9746c4bb131eeae4676a413fe33161aa66560be2ed844451dfca6116b8025af5";
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
