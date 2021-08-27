
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, python3Packages, rclpy, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-rosbridge-library";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/galactic/rosbridge_library/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "53679a860c6811c2eebda3526ae774314a82c85678d7c2bce3ac96be7ae66e72";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs python3Packages.bson python3Packages.pillow rclpy rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The core rosbridge package, responsible for interpreting JSON andperforming
    the appropriate ROS action, like subscribe, publish, call service, and
    interact with params.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
