
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-ewellix-description";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ewellix_lift_common-release/archive/release/humble/ewellix_description/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "b4b442836054122e0c41ca4fa43b4a038d190e793044fb06e2a9570f9ca64530";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath's description package for Ewellix TLT lifting columns";
    license = with lib.licenses; [ bsd3 ];
  };
}
