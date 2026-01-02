
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, class-loader, rcpputils, rcutils, tinyxml-2 }:
buildRosPackage {
  pname = "ros-rolling-pluginlib";
  version = "5.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pluginlib-release/archive/release/rolling/pluginlib/5.8.2-1.tar.gz";
    name = "5.8.2-1.tar.gz";
    sha256 = "ac81b138f7692e75cb7ac4f08be430772b636ca2b5746b6def8340c0549e3ee2";
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
