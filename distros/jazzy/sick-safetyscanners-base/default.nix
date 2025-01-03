
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-jazzy-sick-safetyscanners-base";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safetyscanners_base-release/archive/release/jazzy/sick_safetyscanners_base/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "55773fb7bd91ec167f176f0e41c8dc1d4ca53a0a3694fa264af1362aa82f9d9d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Provides an Interface to read the sensor output of a SICK
  Safety Scanner";
    license = with lib.licenses; [ "ALv2" ];
  };
}
