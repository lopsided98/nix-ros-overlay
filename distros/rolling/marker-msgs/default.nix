
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-marker-msgs";
  version = "0.0.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marker_msgs-release/archive/release/rolling/marker_msgs/0.0.8-2.tar.gz";
    name = "0.0.8-2.tar.gz";
    sha256 = "2c9bd675dab1ce8430b741798e68abf14919063d9df2fafba18460ea424dd9d5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The marker_msgs package contains messages usable to setup a marker/fiducial system. 
    The package distinguishes between two types of messages. 
    First messages to describe the properties of a marker/fiducial detection system and the detected markers. 
    Secondly messages used to represent a map of markers/features with covariances as it would be produced by a SLAM system or published by a map server for self-localization.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
