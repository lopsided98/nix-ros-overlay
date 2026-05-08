
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, depthai-bridge-v3, depthai-descriptions-v3, depthai-examples-v3, depthai-filters-v3, depthai-ros-driver-v3, depthai-ros-msgs-v3, depthai-v3 }:
buildRosPackage {
  pname = "ros-jazzy-depthai-ros-v3";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-v3-release/archive/release/jazzy/depthai_ros_v3/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "1d151922031e20450211f9a560e1e83aa3251fafd90a35f85c71d68e3f9226bd";
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
