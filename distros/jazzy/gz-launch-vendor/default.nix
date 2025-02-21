
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, binutils, cmake, gflags, gz-cmake-vendor, gz-common-vendor, gz-gui-vendor, gz-math-vendor, gz-msgs-vendor, gz-plugin-vendor, gz-sim-vendor, gz-tools-vendor, gz-transport-vendor, libwebsockets, libyaml, tinyxml-2, util-linux, xorg }:
buildRosPackage {
  pname = "ros-jazzy-gz-launch-vendor";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_launch_vendor-release/archive/release/jazzy/gz_launch_vendor/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "e1ffffcf4ecf1684ba9560830c17aedf9e25b25734238cd3996f964c9f4c272c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint xorg.xorgserver ];
  propagatedBuildInputs = [ binutils gflags gz-cmake-vendor gz-common-vendor gz-gui-vendor gz-math-vendor gz-msgs-vendor gz-plugin-vendor gz-sim-vendor gz-tools-vendor gz-transport-vendor libwebsockets libyaml tinyxml-2 util-linux xorg.libXi xorg.libXmu ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-launch7 7.1.1

    Gazebo Launch : Run and manage programs and plugins";
    license = with lib.licenses; [ asl20 ];
  };
}
