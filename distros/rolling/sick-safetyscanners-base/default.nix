
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-rolling-sick-safetyscanners-base";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safetyscanners_base-release/archive/release/rolling/sick_safetyscanners_base/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "6bcc52a498de3a1ac3e55e80b266eb0f960d43e4384885ddcf7b839c34362aef";
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
