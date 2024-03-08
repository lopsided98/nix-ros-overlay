
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, class-loader, rcpputils, rcutils, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-rolling-pluginlib";
  version = "5.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pluginlib-release/archive/release/rolling/pluginlib/5.4.1-2.tar.gz";
    name = "5.4.1-2.tar.gz";
    sha256 = "d7f710aefead00602cd4974e086ad4acca6673ec95c6b6c4df07f1c30c8dca78";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp class-loader rcpputils rcutils tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The pluginlib package provides tools for writing and dynamically loading plugins using the ROS build infrastructure.
    To work, these tools require plugin providers to register their plugins in the package.xml of their package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
