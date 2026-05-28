
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, depthai-bridge-v3, depthai-descriptions-v3, depthai-examples-v3, depthai-filters-v3, depthai-ros-driver-v3, depthai-ros-msgs-v3, depthai-v3 }:
buildRosPackage {
  pname = "ros-jazzy-depthai-ros-v3";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-v3-release/archive/release/jazzy/depthai_ros_v3/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "a682f823a02150a822fe716a19ef0f48c94e534e85bf678877af3d9496c1a58e";
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
