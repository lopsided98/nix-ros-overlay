
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, dolly-gazebo, dolly-ignition }:
buildRosPackage {
  pname = "ros-rolling-dolly";
  version = "0.4.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dolly-release/archive/release/rolling/dolly/0.4.0-5.tar.gz";
    name = "0.4.0-5.tar.gz";
    sha256 = "fbe1389b6e7dfbcbf10be281f83863e4b4aa8d97ffd849a0c3c0c909b65c60ca";
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
