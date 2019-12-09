
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tinyxml2-vendor, rcutils, ament-cmake, class-loader, ament-index-cpp, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-crystal-pluginlib";
  version = "2.2.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pluginlib-release/archive/release/crystal/pluginlib/2.2.1-0.tar.gz";
    name = "2.2.1-0.tar.gz";
    sha256 = "f520bff44d60282657c97f75a9eee211d9e49e0ed605450997a0155f774adbaf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-index-cpp tinyxml2-vendor rcutils class-loader ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp tinyxml2-vendor rcutils class-loader ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The pluginlib package provides tools for writing and dynamically loading plugins using the ROS build infrastructure.
    To work, these tools require plugin providers to register their plugins in the package.xml of their package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
