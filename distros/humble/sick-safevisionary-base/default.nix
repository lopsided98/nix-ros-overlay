
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-humble-sick-safevisionary-base";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_base-release/archive/release/humble/sick_safevisionary_base/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "4bba81d28c36e3b0d94830ba47c843e7a195eab1d3ba90edc16d8b352a3851d5";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The package provides the basic hardware interface to the SICK Safevisionary sensor'';
    license = with lib.licenses; [ asl20 ];
  };
}
