
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-jazzy-sick-safetyscanners-base";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safetyscanners_base-release/archive/release/jazzy/sick_safetyscanners_base/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "8a9a42cec4065d5dc11100e3379e256ae7bf9f7d5580dbe94e45d7c6db0b17db";
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
