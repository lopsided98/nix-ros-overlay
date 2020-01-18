
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, console-bridge, console-bridge-vendor, poco, poco-vendor }:
buildRosPackage {
  pname = "ros-eloquent-class-loader";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/class_loader-release/archive/release/eloquent/class_loader/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "79177401ea6ace156ebba466796cff3ee598e291b0b04ee8e329d8e9f4ca6205";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ console-bridge console-bridge-vendor poco poco-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The class_loader package is a ROS-independent package for loading plugins during runtime and the foundation of the higher level ROS &quot;pluginlib&quot; library.
    class_loader utilizes the host operating system's runtime loader to open runtime libraries (e.g. .so/.dll files), introspect the library for exported plugin classes, and allows users to instantiate objects of these exported classes without the explicit declaration (i.e. header file) for those classes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
