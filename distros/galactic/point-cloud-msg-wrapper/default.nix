
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-point-cloud-msg-wrapper";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://gitlab.com/ApexAI/point_cloud_msg_wrapper-release/-/archive/release/galactic/point_cloud_msg_wrapper/1.0.6-1/point_cloud_msg_wrapper-release-release-galactic-point_cloud_msg_wrapper-1.0.6-1.tar.gz";
    name = "point_cloud_msg_wrapper-release-release-galactic-point_cloud_msg_wrapper-1.0.6-1.tar.gz";
    sha256 = "49013725384b074e58bf83378d0aaa59f0d998e686bedd133c231c524ed5a8c5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''A point cloud message wrapper that allows for simple and safe PointCloud2 msg usage'';
    license = with lib.licenses; [ asl20 ];
  };
}
