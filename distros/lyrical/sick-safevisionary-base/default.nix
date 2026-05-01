
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-lyrical-sick-safevisionary-base";
  version = "1.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_base-release/archive/release/lyrical/sick_safevisionary_base/1.0.1-4.tar.gz";
    name = "1.0.1-4.tar.gz";
    sha256 = "da8d22ca468f266b3961bf0c5c39881b01361c2bfa89867052486924d54edbe4";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The package provides the basic hardware interface to the SICK Safevisionary sensor";
    license = with lib.licenses; [ asl20 ];
  };
}
