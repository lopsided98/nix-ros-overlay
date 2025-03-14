
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, can-utils, clearpath-config, clearpath-generator-common, clearpath-motor-msgs, clearpath-platform-msgs, diagnostic-msgs, geometry-msgs, nav-msgs, rclpy, sensor-msgs, simple-term-menu-vendor, std-msgs, stress, tf-transformations, tf2-geometry-msgs, tf2-msgs, wireless-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-tests";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_tests-release/archive/release/jazzy/clearpath_tests/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "8bcd3527c6b6a56258f92bcd79d2557302be5beec9f2fec0760010e1305b9d38";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-utils clearpath-config clearpath-generator-common clearpath-motor-msgs clearpath-platform-msgs diagnostic-msgs geometry-msgs nav-msgs rclpy sensor-msgs simple-term-menu-vendor std-msgs stress tf-transformations tf2-geometry-msgs tf2-msgs wireless-msgs ];

  meta = {
    description = "Clearpath Tests";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
