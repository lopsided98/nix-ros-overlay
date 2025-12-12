
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, class-loader, rcpputils, rcutils, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-jazzy-pluginlib";
  version = "5.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pluginlib-release/archive/release/jazzy/pluginlib/5.4.4-1.tar.gz";
    name = "5.4.4-1.tar.gz";
    sha256 = "c2a9289c24eeda5841e4da61fbcd87fccfee9ae0239d41186449dc4f3cedd8b3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp class-loader rcpputils rcutils tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The pluginlib package provides tools for writing and dynamically loading plugins using the ROS build infrastructure.
    To work, these tools require plugin providers to register their plugins in the package.xml of their package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
