
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dynamixel, tobas-real-common, tobas-real-msgs, tobas-real-ros, tobas-sbus-driver }:
buildRosPackage {
  pname = "ros-jazzy-tobas-real";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_real/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "f06bd0e662d87d1d18325e05985f32ef0808d596af7f88d4888970bc1b902d67";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-dynamixel tobas-real-common tobas-real-msgs tobas-real-ros tobas-sbus-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for Tobas real-hardware runtime interfaces.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
