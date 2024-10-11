
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, depthai, depthai-bridge, depthai-descriptions, depthai-examples, depthai-filters, depthai-ros-driver, depthai-ros-msgs }:
buildRosPackage {
  pname = "ros-iron-depthai-ros";
  version = "2.10.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/iron/depthai-ros/2.10.2-1.tar.gz";
    name = "2.10.2-1.tar.gz";
    sha256 = "5338cd38f533a54dd8e3fbbf94144e012f482a59fd0cc00bcb3ae62e0adaa67b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ depthai depthai-bridge depthai-descriptions depthai-examples depthai-filters depthai-ros-driver depthai-ros-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The depthai-ros package";
    license = with lib.licenses; [ mit ];
  };
}
