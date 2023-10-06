
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, clearpath-generator-common, python3Packages, rclpy, xacro }:
buildRosPackage {
  pname = "ros-humble-clearpath-config-live";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/humble/clearpath_config_live/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "7ec905414bbb9bfc09d1ce7afa3522bddd2892aced10a28b8defb58394f921fe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clearpath-generator-common python3Packages.watchdog rclpy xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Live URDF Updater from Clearpath Configuration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
