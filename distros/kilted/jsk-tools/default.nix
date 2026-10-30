
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-rosdep, ament-cmake, ament-cmake-python, diagnostic-msgs, jsk-ros1-ros2-compat, launch-ros, launch-testing, launch-testing-ament-cmake, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-kilted-jsk-tools";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kilted/jsk_tools/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "1bfc3be619d10d84bbdd246f8ab057092ef44c3efaa4a0a81eb4311a4cc7b4a2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ _unresolved_python3-rosdep diagnostic-msgs jsk-ros1-ros2-compat python3Packages.colorama python3Packages.progressbar python3Packages.pygithub python3Packages.requests python3Packages.tabulate python3Packages.texttable rclpy ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Includes emacs scripts, ros tool alias generator, and launch doc generator.";
    license = with lib.licenses; [ asl20 ];
  };
}
