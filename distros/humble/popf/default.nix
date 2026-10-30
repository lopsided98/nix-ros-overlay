
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, bison, cbc, clp, flex, rclcpp }:
buildRosPackage {
  pname = "ros-humble-popf";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/popf-release/archive/release/humble/popf/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "0c577ef1a384ff84a33e8b00a3ffde64251df9365d1a87624e8405d74d306729";
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
