
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, console-bridge, console-bridge-vendor, rcpputils }:
buildRosPackage {
  pname = "ros-jazzy-class-loader";
  version = "2.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/class_loader-release/archive/release/jazzy/class_loader/2.7.0-3.tar.gz";
    name = "2.7.0-3.tar.gz";
    sha256 = "87166eb87b5c9b1dd52b53108a70153ac0b3301141fc7b01ebf1641ce8dc6d43";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ console-bridge console-bridge-vendor rcpputils ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = "The class_loader package is a ROS-independent package for loading plugins during runtime and the foundation of the higher level ROS \"pluginlib\" library.
    class_loader utilizes the host operating system's runtime loader to open runtime libraries (e.g. .so/.dll files), introspect the library for exported plugin classes, and allows users to instantiate objects of these exported classes without the explicit declaration (i.e. header file) for those classes.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
