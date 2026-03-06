
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-ewellix-description";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ewellix_lift_common-release/archive/release/jazzy/ewellix_description/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "0460e8cf12afd084c6f9ccebcfd2e0785fd6afb0694c78599a4d7d4dc3135a7a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath's description package for Ewellix TLT lifting columns";
    license = with lib.licenses; [ bsd3 ];
  };
}
