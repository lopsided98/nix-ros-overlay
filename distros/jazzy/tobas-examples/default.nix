
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-code-style, tobas-examples-cpp, tobas-examples-py }:
buildRosPackage {
  pname = "ros-jazzy-tobas-examples";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_examples/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "0f41ef9c7b697a8d7b5419ba2f5b459df13ffef98d77f09aafc7b824a25e2291";
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
