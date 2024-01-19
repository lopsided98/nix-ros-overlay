
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, dolly-gazebo, dolly-ignition }:
buildRosPackage {
  pname = "ros-rolling-dolly";
  version = "0.4.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dolly-release/archive/release/rolling/dolly/0.4.0-4.tar.gz";
    name = "0.4.0-4.tar.gz";
    sha256 = "09ecc8d42f88bd9f8cae288856fb195c64494dd3569da48423655a3fc1917220";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dolly-follow dolly-gazebo dolly-ignition ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta-package for Dolly, the robot sheep.'';
    license = with lib.licenses; [ asl20 ];
  };
}
