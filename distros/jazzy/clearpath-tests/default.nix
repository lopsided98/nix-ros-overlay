
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, can-utils, clearpath-config, clearpath-generator-common, clearpath-motor-msgs, clearpath-platform-msgs, diagnostic-msgs, geometry-msgs, nav-msgs, rclpy, sensor-msgs, simple-term-menu-vendor, std-msgs, stress, tf-transformations, tf2-geometry-msgs, tf2-msgs, wireless-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-tests";
  version = "0.2.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_tests-release/archive/release/jazzy/clearpath_tests/0.2.9-1.tar.gz";
    name = "0.2.9-1.tar.gz";
    sha256 = "bb7b9c6c62326967f57f8a9417bce2198291cca047a3548e15dfdb83a02d2e4c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-utils clearpath-config clearpath-generator-common clearpath-motor-msgs clearpath-platform-msgs diagnostic-msgs geometry-msgs nav-msgs rclpy sensor-msgs simple-term-menu-vendor std-msgs stress tf-transformations tf2-geometry-msgs tf2-msgs wireless-msgs ];

  meta = {
    description = "Clearpath Tests";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
