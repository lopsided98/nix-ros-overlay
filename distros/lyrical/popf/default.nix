
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bison, cbc, clp, flex, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-popf";
  version = "0.0.20-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/popf-release/archive/release/lyrical/popf/0.0.20-1.tar.gz";
    name = "0.0.20-1.tar.gz";
    sha256 = "d061eb68afe519f48aff7f295d7fdbd516a927034259a8a32b854f2f17f2cd3e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ bison cbc clp flex rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The POPF package";
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
