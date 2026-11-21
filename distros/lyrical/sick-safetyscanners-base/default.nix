
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-lyrical-sick-safetyscanners-base";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safetyscanners_base-release/archive/release/lyrical/sick_safetyscanners_base/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "9c79a17b66bf6edbd3f5a896cdccbad4f213c598d30d0ca0322fac4b07caaf3e";
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
