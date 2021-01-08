
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-dashing-tts-interfaces";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/tts-release/archive/release/dashing/tts_interfaces/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "278759225665de9c9d1cc5e9aa2e9fc33b99ab78051590704ed3a0b13af532ab";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Contains message and service definitions used by tts.'';
    license = with lib.licenses; [ asl20 ];
  };
}
