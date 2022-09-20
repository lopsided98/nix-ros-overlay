
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, rclpy }:
buildRosPackage {
  pname = "ros-foxy-urdf-test";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/pal-gbp/urdf_test-ros2-gbp/archive/release/foxy/urdf_test/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "5021683ebf04a99d3c15ef5e16e824abebadb4347d77a9452c77fb9a6c6931dd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclpy ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''The urdf_test package'';
    license = with lib.licenses; [ asl20 ];
  };
}
