
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, diagnostic-msgs, jsk-ros1-ros2-compat, launch-ros, launch-testing, launch-testing-ament-cmake, python3Packages, rclpy, ros-environment }:
buildRosPackage {
  pname = "ros-kilted-jsk-tools";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kilted/jsk_tools/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "a0aec4bc61a945cb86f9c3ed9d7e6594ca0ac6a5fbeb02b3bcd9c2ea05140e23";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ros-environment ];
  checkInputs = [ launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ diagnostic-msgs jsk-ros1-ros2-compat python3Packages.colorama python3Packages.progressbar python3Packages.pygithub python3Packages.requests python3Packages.rosdep python3Packages.tabulate python3Packages.texttable rclpy ];
  nativeBuildInputs = [ ament-cmake jsk-ros1-ros2-compat ros-environment ];

  meta = {
    description = "Includes emacs scripts, ros tool alias generator, and launch doc generator.";
    license = with lib.licenses; [ asl20 ];
  };
}
