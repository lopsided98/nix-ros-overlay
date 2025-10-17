
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, onetbb }:
buildRosPackage {
  pname = "ros-humble-gtsam";
  version = "4.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/humble/gtsam/4.2.0-3.tar.gz";
    name = "4.2.0-3.tar.gz";
    sha256 = "a8d0bcc7dabc3ce96ecf70180b5993fb38d410ae691ee2f15adddac8dc182e21";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost eigen onetbb ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "gtsam";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
