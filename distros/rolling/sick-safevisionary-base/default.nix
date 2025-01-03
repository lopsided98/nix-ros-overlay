
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-sick-safevisionary-base";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_base-release/archive/release/rolling/sick_safevisionary_base/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "f7d6f57388eb4e35c477633fb81dc3c029b15f3bba3bbee1358b8383d7c7a15b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The package provides the basic hardware interface to the SICK Safevisionary sensor";
    license = with lib.licenses; [ asl20 ];
  };
}
