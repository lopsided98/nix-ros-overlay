
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bison, cbc, clp, flex, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-popf";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/popf-release/archive/release/jazzy/popf/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "9f7e34588e454f5ce6e3396eda7b87a61980b4c400019fb32abcc3be73e8e7d9";
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
