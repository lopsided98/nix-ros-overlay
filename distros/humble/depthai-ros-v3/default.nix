
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, depthai-bridge-v3, depthai-descriptions-v3, depthai-examples-v3, depthai-filters-v3, depthai-ros-driver-v3, depthai-ros-msgs-v3, depthai-v3 }:
buildRosPackage {
  pname = "ros-humble-depthai-ros-v3";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-v3-release/archive/release/humble/depthai_ros_v3/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "7713ae4c2362f97ef41b436db8246a15489378dd9ded4f22a268875481524806";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ depthai-bridge-v3 depthai-descriptions-v3 depthai-examples-v3 depthai-filters-v3 depthai-ros-driver-v3 depthai-ros-msgs-v3 depthai-v3 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The depthai_ros_v3 package";
    license = with lib.licenses; [ mit ];
  };
}
