
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-cmake-gtest, sensor-msgs, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-dummy-sensors";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/dummy_sensors/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "268800914d1288e0149f3bebef91dbbe9869d4ac1f6259f9e41bd713e19faa0a";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs rclcpp ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ sensor-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''dummy sensor nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
