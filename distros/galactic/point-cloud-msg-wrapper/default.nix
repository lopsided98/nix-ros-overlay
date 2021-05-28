
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-point-cloud-msg-wrapper";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://gitlab.com/ApexAI/point_cloud_msg_wrapper-release/-/archive/release/galactic/point_cloud_msg_wrapper/1.0.5-1/point_cloud_msg_wrapper-release-release-galactic-point_cloud_msg_wrapper-1.0.5-1.tar.gz";
    name = "point_cloud_msg_wrapper-release-release-galactic-point_cloud_msg_wrapper-1.0.5-1.tar.gz";
    sha256 = "293d307fa96af1531eb2e40af41d5d2b22c7950b182bae0eec82ea7bd954d1b0";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A point cloud message wrapper that allows for simple and safe msg usage'';
    license = with lib.licenses; [ asl20 ];
  };
}
