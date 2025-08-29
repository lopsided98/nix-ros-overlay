
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ewellix-description, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-ewellix-viz";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ewellix_lift_common-release/archive/release/jazzy/ewellix_viz/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "b8ec7656780930959a2321647698d2a5863315e4b51a3eebd1e0e729926c2ccb";
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
