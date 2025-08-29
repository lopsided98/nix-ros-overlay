
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-ewellix-interfaces";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ewellix_lift_common-release/archive/release/humble/ewellix_interfaces/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "0ddb9ca428b779b0c25bb613cdd50a291e0d9e30addff08782ba04cc814cb1cf";
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
