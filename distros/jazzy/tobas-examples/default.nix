
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-code-style, tobas-examples-cpp, tobas-examples-py }:
buildRosPackage {
  pname = "ros-jazzy-tobas-examples";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_examples/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "a98a1af8eca0dd9e22f43c5b0eee08c67f91efb3c92c9b39ff2ce0db60a78de0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-code-style tobas-examples-cpp tobas-examples-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for Tobas example applications.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
