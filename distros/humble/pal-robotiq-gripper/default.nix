
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, pal-robotiq-controller-configuration, pal-robotiq-description, rclcpp }:
buildRosPackage {
  pname = "ros-humble-pal-robotiq-gripper";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_robotiq_gripper-release/archive/release/humble/pal_robotiq_gripper/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "643dd9ab86c4a32679ed3960e9f46c547edf5da8ba93e97ddf6bbbb490e3088d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rclcpp ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pal-robotiq-controller-configuration pal-robotiq-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Robotiq Gripper Definition Packages";
    license = with lib.licenses; [ asl20 ];
  };
}
