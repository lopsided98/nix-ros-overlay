
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, rosidl-default-generators, rosidl-default-runtime, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-tts-interfaces";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/tts-release/archive/release/dashing/tts_interfaces/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "267d3d899fe92dde7183ab6116c2498cc2f6ee232eb113571cdb8f205fdda0f9";
  };

  buildType = "ament_cmake";
  buildInputs = [ action-msgs ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Contains message and service definitions used by tts.'';
    license = with lib.licenses; [ asl20 ];
  };
}
