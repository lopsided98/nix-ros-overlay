
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, dolly-gazebo, dolly-ignition }:
buildRosPackage {
  pname = "ros-iron-dolly";
  version = "0.4.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dolly-release/archive/release/iron/dolly/0.4.0-5.tar.gz";
    name = "0.4.0-5.tar.gz";
    sha256 = "e198b7361b41a209cb58fb1bd6a5b7ce1076156520ebe95161bca2dfb01a6fbd";
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
