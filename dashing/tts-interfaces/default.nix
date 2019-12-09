
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, rosidl-default-generators, action-msgs, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-tts-interfaces";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/tts-release/archive/release/dashing/tts_interfaces/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "ea2c475744c13bacdbcb227bec310950d235c971ba87c5330b64ac20cf49e1fa";
  };

  buildType = "ament_cmake";
  buildInputs = [ action-msgs ];
  propagatedBuildInputs = [ rosidl-default-runtime action-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Contains message and service definitions used by tts.'';
    license = with lib.licenses; [ asl20 ];
  };
}
