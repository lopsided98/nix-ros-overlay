
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-copyright, ament-flake8, ament-lint-auto, ament-lint-common, ament-pep257, python3Packages, rclpy, sensor-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-pal-pro-gripper-wrapper";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_pro_gripper-release/archive/release/humble/pal_pro_gripper_wrapper/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "9b5fe261b905b599688dd6f87497dbb2d97635772ad97f150976cd29978b37f4";
  };

  buildType = "ament_python";
  buildInputs = [ ament-cmake-python sensor-msgs trajectory-msgs ];
  checkInputs = [ ament-copyright ament-flake8 ament-lint-auto ament-lint-common ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy ];
  nativeBuildInputs = [ ament-cmake-python ];

  meta = {
    description = "Grasp controller to close with a determined error on position only
    so to skip overheating.";
    license = with lib.licenses; [ asl20 ];
  };
}
