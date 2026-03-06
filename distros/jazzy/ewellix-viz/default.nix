
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ewellix-description, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-ewellix-viz";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ewellix_lift_common-release/archive/release/jazzy/ewellix_viz/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "1b8b7d44201c40f72dea8527989d35054fe7af0e50e5e60f44e6430e45432853";
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
