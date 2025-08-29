
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-ewellix-description";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ewellix_lift_common-release/archive/release/jazzy/ewellix_description/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "c184f486e11acf37dc93e5503e28639ada06afed0bdb98b6f3b6dafac558e936";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath's description package for Ewellix TLT lifting columns";
    license = with lib.licenses; [ bsd3 ];
  };
}
