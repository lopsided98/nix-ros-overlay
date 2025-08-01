
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen, rclcpp, sensor-msgs, std-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-imu-calib";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/Nathan85001/imu_calib-release/archive/release/humble/imu_calib/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "d61ecd83a2c42fc43be31764fdff0e238a2777f46262c6bf1fadd09604382370";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen rclcpp sensor-msgs std-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 package for computing and applying IMU calibration parameters";
    license = with lib.licenses; [ bsd3 ];
  };
}
