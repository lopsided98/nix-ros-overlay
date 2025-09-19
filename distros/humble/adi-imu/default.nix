
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-copyright, ament-lint-auto, ament-pep257, builtin-interfaces, geometry-msgs, libiio, rclcpp, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-adi-imu";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/adi_imu-release/archive/release/humble/adi_imu/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "aded4759ba5fb51d90d2f107b9aadb8e70ebcfb3d88a4868f586873d3e7d2e84";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-xmllint ament-copyright ament-lint-auto ament-pep257 ];
  propagatedBuildInputs = [ ament-cmake builtin-interfaces geometry-msgs libiio rclcpp rosidl-default-runtime sensor-msgs std-msgs ];

  meta = {
    description = "Publisher for ADI IMUs";
    license = with lib.licenses; [ asl20 ];
  };
}
