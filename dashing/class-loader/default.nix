
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, poco, ament-cmake, ament-lint-common, ament-cmake-gtest, poco-vendor, console-bridge-vendor, console-bridge, ament-lint-auto }:
buildRosPackage rec {
  pname = "ros-dashing-class-loader";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/class_loader-release/archive/release/dashing/class_loader/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "548cefc198d57f9d46e471c195ef961d8513a8e57caed0ded81806f1d3ab43f5";
  };

  buildType = "ament_cmake";
  buildInputs = [ poco poco-vendor console-bridge console-bridge-vendor ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ poco poco-vendor console-bridge console-bridge-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The class_loader package is a ROS-independent package for loading plugins during runtime and the foundation of the higher level ROS &quot;pluginlib&quot; library.
    class_loader utilizes the host operating system's runtime loader to open runtime libraries (e.g. .so/.dll files), introspect the library for exported plugin classes, and allows users to instantiate objects of these exported classes without the explicit declaration (i.e. header file) for those classes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
