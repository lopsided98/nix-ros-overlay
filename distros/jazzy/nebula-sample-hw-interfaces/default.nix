
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, nebula-core-hw-interfaces, nebula-sample-common }:
buildRosPackage {
  pname = "ros-jazzy-nebula-sample-hw-interfaces";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_sample_hw_interfaces/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "9088e939c44e665c1ae792da26627a112e0d09fb6bb367515df7bd7312b128a1";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ];
  propagatedBuildInputs = [ nebula-core-common nebula-core-hw-interfaces nebula-sample-common ];
  nativeBuildInputs = [ autoware-cmake ];

  meta = {
    description = "Nebula Sample HW Interfaces";
    license = with lib.licenses; [ asl20 ];
  };
}
