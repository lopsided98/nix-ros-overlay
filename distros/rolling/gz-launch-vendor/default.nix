
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, binutils, gflags, gz-cmake-vendor, gz-common-vendor, gz-gui-vendor, gz-math-vendor, gz-msgs-vendor, gz-plugin-vendor, gz-sim-vendor, gz-tools-vendor, gz-transport-vendor, libwebsockets, libyaml, tinyxml-2, util-linux, xorg }:
buildRosPackage {
  pname = "ros-rolling-gz-launch-vendor";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_launch_vendor-release/archive/release/rolling/gz_launch_vendor/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "59f22212dcd9f64cf801d4faae5e408398f5a9f75a4c12c5715002679a31435e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint xorg.xorgserver ];
  propagatedBuildInputs = [ binutils gflags gz-cmake-vendor gz-common-vendor gz-gui-vendor gz-math-vendor gz-msgs-vendor gz-plugin-vendor gz-sim-vendor gz-tools-vendor gz-transport-vendor libwebsockets libyaml tinyxml-2 util-linux xorg.libXi xorg.libXmu ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for: gz-launch7 7.1.0

    Gazebo Launch : Run and manage programs and plugins";
    license = with lib.licenses; [ asl20 ];
  };
}
