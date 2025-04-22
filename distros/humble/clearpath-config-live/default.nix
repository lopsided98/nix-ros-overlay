
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, clearpath-generator-common, python3Packages, rclpy, xacro }:
buildRosPackage {
  pname = "ros-humble-clearpath-config-live";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/humble/clearpath_config_live/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "4c134969dcb2d435918025dcaaee90a36d14a8a0b8c76159d2bf4e98beaec221";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clearpath-generator-common python3Packages.watchdog rclpy xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Live URDF Updater from Clearpath Configuration.";
    license = with lib.licenses; [ asl20 ];
  };
}
