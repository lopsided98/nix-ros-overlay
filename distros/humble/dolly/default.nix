
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, dolly-gazebo, dolly-ignition }:
buildRosPackage {
  pname = "ros-humble-dolly";
  version = "0.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dolly-release/archive/release/humble/dolly/0.4.0-3.tar.gz";
    name = "0.4.0-3.tar.gz";
    sha256 = "0f9cd7d78f9b2850716c633df087104af0d62e0872f87d7cc8570e77c5b74d99";
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
