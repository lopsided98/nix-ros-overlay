
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-xmllint, ament-lint-auto, gz-gui-vendor, ros-gz }:
buildRosPackage {
  pname = "ros-jazzy-irobot-create-gz-plugins";
  version = "3.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/jazzy/irobot_create_gz_plugins/3.0.2-2.tar.gz";
    name = "3.0.2-2.tar.gz";
    sha256 = "a02c5b72e87ed202b6e51f654bb854637093c6b32f96f274c53d65aad75bd799";
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
