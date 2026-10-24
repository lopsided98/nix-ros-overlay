
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, bison, cbc, clp, flex, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-popf";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/popf-release/archive/release/lyrical/popf/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "d541731fd1c24e6b84bcb8b8e72c93e202d5935bdadc4215afb9195341e8a28e";
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
