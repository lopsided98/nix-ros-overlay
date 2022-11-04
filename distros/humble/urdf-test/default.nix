
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, rclpy }:
buildRosPackage {
  pname = "ros-humble-urdf-test";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/urdf_test-ros2-gbp/archive/release/humble/urdf_test/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "3f4333444bb8c5434ce9f1ede17b8ac7d74d7c7f44ddd8154152f09ee3e141a9";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclpy ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''The urdf_test package'';
    license = with lib.licenses; [ asl20 ];
  };
}
