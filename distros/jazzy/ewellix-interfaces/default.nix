
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-ewellix-interfaces";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ewellix_lift_common-release/archive/release/jazzy/ewellix_interfaces/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "c850a5636ef791ca3e7a6063122256877b2ed786813e0e2d3ad8a6d5f7b673c2";
  };

  buildType = "catkin";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Ewellix lift ROS 2 driver";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
