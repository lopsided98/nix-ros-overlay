
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-point-cloud-msg-wrapper";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://gitlab.com/ApexAI/point_cloud_msg_wrapper-release/-/archive/release/foxy/point_cloud_msg_wrapper/1.0.7-1/point_cloud_msg_wrapper-release-release-foxy-point_cloud_msg_wrapper-1.0.7-1.tar.gz";
    name = "point_cloud_msg_wrapper-release-release-foxy-point_cloud_msg_wrapper-1.0.7-1.tar.gz";
    sha256 = "552051203ff6efe317e11675745a88de303e3f51490cdc4947a5b8d981ee7277";
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
