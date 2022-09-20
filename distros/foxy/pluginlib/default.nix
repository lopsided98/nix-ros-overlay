
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, class-loader, rcpputils, rcutils, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-foxy-pluginlib";
  version = "2.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pluginlib-release/archive/release/foxy/pluginlib/2.5.4-1.tar.gz";
    name = "2.5.4-1.tar.gz";
    sha256 = "df2d9db0e320e5e85de6e5048452620a9b13c4cb9bbe8fd267ac08df8f3f102a";
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
