
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, xacro }:
buildRosPackage {
  pname = "ros-humble-autoware-sample-vehicle-description";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_sample_vehicle_description/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "06b0ff08ed09774b909451a66ca1eb18a828ee0943c5353d995157516ff5f107";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The autoware_sample_vehicle_description package";
    license = with lib.licenses; [ "Apache-2.0-License" ];
  };
}
