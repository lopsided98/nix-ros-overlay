
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-smacc2-msgs";
  version = "2.3.8-r1";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/humble/smacc2_msgs/2.3.8-1.tar.gz";
    name = "2.3.8-1.tar.gz";
    sha256 = "755684ac10b0d1a73f3e9f3aed3ab06d0275e7d08904057af040de571cf44333";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages and services used in smacc2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
