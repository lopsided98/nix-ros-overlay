
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, can-utils, clearpath-config, clearpath-generator-common, clearpath-motor-msgs, clearpath-platform-msgs, diagnostic-msgs, geometry-msgs, nav-msgs, rclpy, sensor-msgs, simple-term-menu-vendor, std-msgs, stress, tf-transformations, tf2-geometry-msgs, tf2-msgs, wireless-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-tests";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_tests-release/archive/release/jazzy/clearpath_tests/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "480675486ac01065213ea5c9e1d2440e525afb319154dabe1356d749c5a28ee1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-utils clearpath-config clearpath-generator-common clearpath-motor-msgs clearpath-platform-msgs diagnostic-msgs geometry-msgs nav-msgs rclpy sensor-msgs simple-term-menu-vendor std-msgs stress tf-transformations tf2-geometry-msgs tf2-msgs wireless-msgs ];

  meta = {
    description = "Clearpath Tests";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
