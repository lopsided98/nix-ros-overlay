
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-core }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone-tools";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone_tools/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "3806e64886e64ade7e46cec1253d82b5da8333f25f188aa3c153b713d9a5316e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-drone-core ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aircraft analysis tools for trim, stability derivatives, dynamics, and actuator mixing.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
