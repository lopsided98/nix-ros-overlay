
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bison, cbc, clp, flex, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-popf";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/popf-release/archive/release/kilted/popf/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "6fc15332880e91af4db1d43911e7d38a8eb3026f77a2156581dc14246d1c5e95";
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
