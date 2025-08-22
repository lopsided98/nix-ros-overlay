
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-ewellix-interfaces";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ewellix_lift_common-release/archive/release/jazzy/ewellix_interfaces/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "5c9be76b30096836af45abd8c705024a4a9bc217393d2f7f8ebc072cd76127c9";
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
