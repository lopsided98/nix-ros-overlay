
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-dummy-sensors";
  version = "0.20.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/dummy_sensors/0.20.10-1.tar.gz";
    name = "0.20.10-1.tar.gz";
    sha256 = "3189113247242141dab6abecb69b67d56171a6649e44e3c92c2c3d340f019236";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "dummy sensor nodes";
    license = with lib.licenses; [ asl20 ];
  };
}
