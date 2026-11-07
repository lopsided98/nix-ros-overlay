
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-jazzy-sick-safetyscanners-base";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safetyscanners_base-release/archive/release/jazzy/sick_safetyscanners_base/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "9c4c998b28a6fbc622fbfea6c46b8f917a7f6a9b9a5ab086bb4e7dfba27efc46";
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
