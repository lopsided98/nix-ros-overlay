
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-ess-imu-driver2";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ess_imu_driver2-release/archive/release/humble/ess_imu_driver2/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "a1a7e3e30af2502f36416d8e34688ec42432f8a69cc5283eb6e587d9959c1256";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 package for Epson IMU using C++ wrapper around Linux C driver";
    license = with lib.licenses; [ bsd3 publicDomain ];
  };
}
