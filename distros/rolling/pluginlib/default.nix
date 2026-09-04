
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros-core, ament-index-cpp, ament-lint-auto, ament-lint-common, class-loader, rcpputils, rcutils, tinyxml-2 }:
buildRosPackage {
  pname = "ros-rolling-pluginlib";
  version = "6.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pluginlib-release/archive/release/rolling/pluginlib/6.0.2-1.tar.gz";
    name = "6.0.2-1.tar.gz";
    sha256 = "cfb033a0879570a9f2121abfc476804f8cd54e05bd7edb9a0808800e44711b12";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-ros-core ament-index-cpp class-loader rcpputils rcutils tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "The pluginlib package provides tools for writing and dynamically loading plugins using the ROS build infrastructure.
    To work, these tools require plugin providers to register their plugins in the package.xml of their package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
