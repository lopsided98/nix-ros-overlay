
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, console-bridge, console-bridge-vendor, rcpputils }:
buildRosPackage {
  pname = "ros-humble-class-loader";
  version = "2.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/class_loader-release/archive/release/humble/class_loader/2.2.0-3.tar.gz";
    name = "2.2.0-3.tar.gz";
    sha256 = "f2eeb8c47422eb55774fa0d9d1f81450187d26f1f6e3b7a9d34aa1a45c9882fe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ console-bridge console-bridge-vendor rcpputils ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = ''The class_loader package is a ROS-independent package for loading plugins during runtime and the foundation of the higher level ROS &quot;pluginlib&quot; library.
    class_loader utilizes the host operating system's runtime loader to open runtime libraries (e.g. .so/.dll files), introspect the library for exported plugin classes, and allows users to instantiate objects of these exported classes without the explicit declaration (i.e. header file) for those classes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
