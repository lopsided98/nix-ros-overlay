
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-marker-msgs";
  version = "0.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marker_msgs-release/archive/release/humble/marker_msgs/0.0.8-1.tar.gz";
    name = "0.0.8-1.tar.gz";
    sha256 = "ee6993aee593ce7ac8e9c8295c8d1b790700830d479bfe186320b37d1275ff1f";
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
