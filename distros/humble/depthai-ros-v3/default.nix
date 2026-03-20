
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, depthai-bridge-v3, depthai-descriptions-v3, depthai-examples-v3, depthai-filters-v3, depthai-ros-driver-v3, depthai-ros-msgs-v3, depthai-v3 }:
buildRosPackage {
  pname = "ros-humble-depthai-ros-v3";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-v3-release/archive/release/humble/depthai_ros_v3/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "3b1619715044bb1e54cd8caebeb5167c0ed9c6408851bebaaa554b91de98d5e5";
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
