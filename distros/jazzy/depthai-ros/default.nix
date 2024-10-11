
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, depthai, depthai-bridge, depthai-descriptions, depthai-examples, depthai-filters, depthai-ros-driver, depthai-ros-msgs }:
buildRosPackage {
  pname = "ros-jazzy-depthai-ros";
  version = "2.10.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/jazzy/depthai-ros/2.10.2-1.tar.gz";
    name = "2.10.2-1.tar.gz";
    sha256 = "8f46545d92ed4b08a942ceaf8c7487a6e09945e6b8315d05f4223652b9284257";
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
