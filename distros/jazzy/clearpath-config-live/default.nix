
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, clearpath-generator-common, python3Packages, rclpy, xacro }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-config-live";
  version = "2.9.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/jazzy/clearpath_config_live/2.9.1-1.tar.gz";
    name = "2.9.1-1.tar.gz";
    sha256 = "79fa9e9399f9952b0833263590ff7422c65d3bf079433830bb6460839ad4d75d";
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
