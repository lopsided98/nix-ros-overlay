
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, xacro }:
buildRosPackage {
  pname = "ros-humble-autoware-sample-vehicle-description";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_sample_vehicle_description/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "886e01cb6c433e72a482a2cbdd001c6b8aa3e28eb6bba0fe2263c9b808e1fe23";
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
