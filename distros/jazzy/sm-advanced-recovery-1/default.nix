
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cl-generic-sensor, cl-keyboard, cl-ros2-timer, rclcpp, smacc2, sr-all-events-go, std-msgs, xterm }:
buildRosPackage {
  pname = "ros-jazzy-sm-advanced-recovery-1";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_advanced_recovery_1/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "36dbacfe22036e38d6dbe735ce69d9c97b76d9be550206905b2a5ae375adb32b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cl-generic-sensor cl-keyboard cl-ros2-timer rclcpp smacc2 sr-all-events-go std-msgs xterm ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The sm_advanced_recovery_1 package";
    license = with lib.licenses; [ asl20 ];
  };
}
