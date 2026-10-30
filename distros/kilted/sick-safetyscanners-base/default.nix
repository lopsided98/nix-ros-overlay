
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-kilted-sick-safetyscanners-base";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safetyscanners_base-release/archive/release/kilted/sick_safetyscanners_base/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "d8756e6b82b68263f381dd2fd72b622b525ea259789ecfcc3a81f8e79fa94950";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Provides an Interface to read the sensor output of a SICK
  Safety Scanner";
    license = with lib.licenses; [ asl20 ];
  };
}
