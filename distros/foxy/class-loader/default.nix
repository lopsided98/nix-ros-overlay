
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, console-bridge, console-bridge-vendor, rcpputils }:
buildRosPackage {
  pname = "ros-foxy-class-loader";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/class_loader-release/archive/release/foxy/class_loader/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "4f79f4f883be95b2580b184def1ef5779a2d60135849b139e3ee678e3f0ef60e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ console-bridge console-bridge-vendor rcpputils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The class_loader package is a ROS-independent package for loading plugins during runtime and the foundation of the higher level ROS &quot;pluginlib&quot; library.
    class_loader utilizes the host operating system's runtime loader to open runtime libraries (e.g. .so/.dll files), introspect the library for exported plugin classes, and allows users to instantiate objects of these exported classes without the explicit declaration (i.e. header file) for those classes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
