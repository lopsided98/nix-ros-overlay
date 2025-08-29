
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, clearpath-generator-common, python3Packages, rclpy, xacro }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-config-live";
  version = "2.7.0-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/jazzy/clearpath_config_live/2.7.0-2.tar.gz";
    name = "2.7.0-2.tar.gz";
    sha256 = "74999f49f7fb42a3c9bf5f47c3a30660fae55953f60183645894f278f9d9b334";
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
