
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, onetbb }:
buildRosPackage {
  pname = "ros-kilted-gtsam";
  version = "4.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/kilted/gtsam/4.3.1-1.tar.gz";
    name = "4.3.1-1.tar.gz";
    sha256 = "93c08e7a728455993580bc231638cbbff84be033bc8892c446afd88259fc6f56";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ eigen onetbb ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "gtsam";
    license = with lib.licenses; [ bsd3 bsd3 mpl20 asl20 mpl20 ];
  };
}
