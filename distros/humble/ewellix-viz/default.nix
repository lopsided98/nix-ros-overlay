
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ewellix-description, rviz2 }:
buildRosPackage {
  pname = "ros-humble-ewellix-viz";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ewellix_lift_common-release/archive/release/humble/ewellix_viz/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "f18ce4ca7777a373ddca40e850971bf91aa20f5c283ba4b503c26b2bc9212962";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ewellix-description rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath's visualization package for Ewellix TLT lifting columns";
    license = with lib.licenses; [ bsd3 ];
  };
}
