
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, bison, cbc, clp, flex, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-popf";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/popf-release/archive/release/kilted/popf/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f411e271b75e374943826373975d8d9d8a5f7b1d8684b2d9cebd00baf78e2880";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-test ];
  propagatedBuildInputs = [ bison cbc clp flex rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The POPF package";
    license = with lib.licenses; [ gpl2Only ];
  };
}
