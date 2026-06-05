
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, console-bridge, console-bridge-vendor, rcpputils }:
buildRosPackage {
  pname = "ros-jazzy-class-loader";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/class_loader-release/archive/release/jazzy/class_loader/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "1f4f508fc7497ff7f0676983508e7b15658bc9906149be54540353b58b8cb249";
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
