
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-ros2-control-test-assets";
  version = "2.22.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/ros2_control_test_assets/2.22.0-1.tar.gz";
    name = "2.22.0-1.tar.gz";
    sha256 = "d47fde5b8496658933dbf02977be20965029fc94057b0fa07921bb9a101169f1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The package provides shared test resources for ros2_control stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
