
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, bison, cbc, clp, flex, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-popf";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/popf-release/archive/release/jazzy/popf/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "b983de6fc3609cb006e05d81340553fa7f0511655c643537683490b30941714a";
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
