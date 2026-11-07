
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, nebula-core-common, nebula-core-hw-interfaces, nebula-hesai-common }:
buildRosPackage {
  pname = "ros-humble-nebula-hesai-hw-interfaces";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_hesai_hw_interfaces/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "99eeda80f662f42d0bc4cf7e3a2de2532c82851bfcabeb2ad6f3134dcb621ce8";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ];
  propagatedBuildInputs = [ boost nebula-core-common nebula-core-hw-interfaces nebula-hesai-common ];
  nativeBuildInputs = [ autoware-cmake ];

  meta = {
    description = "Nebula HW Interfaces Hesai";
    license = with lib.licenses; [ asl20 ];
  };
}
