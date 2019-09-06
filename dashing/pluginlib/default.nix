
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, class-loader, tinyxml2-vendor, ament-index-cpp, rcutils }:
buildRosPackage rec {
  pname = "ros-dashing-pluginlib";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pluginlib-release/archive/release/dashing/pluginlib/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "23c7c4eddda0b14bd56479e7996ec6dee25481240ac4d25e8d7cfa068f36c3a2";
  };

  buildType = "ament_cmake";
  buildInputs = [ class-loader tinyxml2-vendor rcutils ament-index-cpp ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ class-loader tinyxml2-vendor rcutils ament-index-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The pluginlib package provides tools for writing and dynamically loading plugins using the ROS build infrastructure.
    To work, these tools require plugin providers to register their plugins in the package.xml of their package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
