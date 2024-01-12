
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bison, cbc, clp, flex, rclcpp }:
buildRosPackage {
  pname = "ros-iron-popf";
  version = "0.0.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/popf-release/archive/release/iron/popf/0.0.15-1.tar.gz";
    name = "0.0.15-1.tar.gz";
    sha256 = "fb037442684697f2ce1bcec339ab8fe9a44ee4c74d35f74c1e9c1f54aad1d416";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ bison cbc clp flex rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The POPF package'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
