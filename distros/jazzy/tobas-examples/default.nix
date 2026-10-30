
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-code-style, tobas-examples-cpp, tobas-examples-py }:
buildRosPackage {
  pname = "ros-jazzy-tobas-examples";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_examples/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "b305a217effe19e5fd39b5fe5988d8aaecc5b66688e4d5bb683b8dea9f93ba83";
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
