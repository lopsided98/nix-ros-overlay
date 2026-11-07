
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-rosdep, ament-cmake, ament-cmake-python, diagnostic-msgs, jsk-ros1-ros2-compat, launch-ros, launch-testing, launch-testing-ament-cmake, python3Packages, rclpy, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-jsk-tools";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/jazzy/jsk_tools/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "df8711b9a2cd9fc21f259ec9ba32281c58d2e3bd9982f2fa13034fc3f179ed8d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ros-environment ];
  checkInputs = [ launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ _unresolved_python3-rosdep diagnostic-msgs jsk-ros1-ros2-compat python3Packages.colorama python3Packages.progressbar python3Packages.pygithub python3Packages.requests python3Packages.tabulate python3Packages.texttable rclpy ];
  nativeBuildInputs = [ ament-cmake jsk-ros1-ros2-compat ros-environment ];

  meta = {
    description = "Includes emacs scripts, ros tool alias generator, and launch doc generator.";
    license = with lib.licenses; [ asl20 ];
  };
}
