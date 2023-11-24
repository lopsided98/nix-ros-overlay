
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-sick-safevisionary-base";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_base-release/archive/release/rolling/sick_safevisionary_base/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "49e894c71bd5c752c3e7f2f597efcb4b4e50fedef7e60d7c156e8df0305be932";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The package provides the basic hardware interface to the SICK Safevisionary sensor'';
    license = with lib.licenses; [ asl20 ];
  };
}
