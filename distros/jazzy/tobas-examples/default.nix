
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-code-style, tobas-examples-cpp, tobas-examples-py }:
buildRosPackage {
  pname = "ros-jazzy-tobas-examples";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_examples/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "ba74a9728cf3157fc7347f2e28841999567e1742f0299a0208c530c6d72f8769";
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
