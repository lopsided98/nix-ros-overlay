
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, class-loader, rcpputils, rcutils, tinyxml-2 }:
buildRosPackage {
  pname = "ros-lyrical-pluginlib";
  version = "5.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pluginlib-release/archive/release/lyrical/pluginlib/5.8.5-1.tar.gz";
    name = "5.8.5-1.tar.gz";
    sha256 = "f517df7331386da4d831dd16f7feac666cc49b57943dd081d23c7cef4cad0d0f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp class-loader rcpputils rcutils tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The pluginlib package provides tools for writing and dynamically loading plugins using the ROS build infrastructure.
    To work, these tools require plugin providers to register their plugins in the package.xml of their package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
