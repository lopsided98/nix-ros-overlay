
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-iron-sick-safevisionary-base";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_base-release/archive/release/iron/sick_safevisionary_base/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "0118e7b996eb0578e7dcfd45252a1ddab6a05257907ee58a1b35396dac7c5f76";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The package provides the basic hardware interface to the SICK Safevisionary sensor'';
    license = with lib.licenses; [ asl20 ];
  };
}
