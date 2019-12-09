
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, ament-cmake, ament-index-cpp, rclcpp, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-swri-system-util";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_system_util/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "c0651f257c3b58556bd38cfac53b79b834acb05f1da28d58f66e95782d31c45a";
  };

  buildType = "ament_cmake";
  buildInputs = [ boost rclcpp ];
  checkInputs = [ ament-index-cpp ament-cmake-gtest ];
  propagatedBuildInputs = [ boost rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_system_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
