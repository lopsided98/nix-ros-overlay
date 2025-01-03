
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-xmllint, ament-lint-auto, gz-gui-vendor, ros-gz }:
buildRosPackage {
  pname = "ros-jazzy-irobot-create-gz-plugins";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/jazzy/irobot_create_gz_plugins/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "f3869ff71db8b90abf5c1f283f1f23cace9b04094bd579721a3197b1e43a7fb1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ gz-gui-vendor ros-gz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Ignition plugins for simulated iRobot(R) Create(R) 3 Educational Robot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
