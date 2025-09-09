
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-kilted-sick-safevisionary-base";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_base-release/archive/release/kilted/sick_safevisionary_base/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "4b7ff064a3cbc245e16bfecfbf068338b4e1cdaa7869c1b1fabfe9cd8b83c6b6";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The package provides the basic hardware interface to the SICK Safevisionary sensor";
    license = with lib.licenses; [ asl20 ];
  };
}
