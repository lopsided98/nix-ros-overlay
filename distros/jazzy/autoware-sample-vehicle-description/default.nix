
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, xacro }:
buildRosPackage {
  pname = "ros-jazzy-autoware-sample-vehicle-description";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_sample_vehicle_description/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "350f0b7c96d3e57135c307da73d725b45dc6688168e3d41c313f0200a8f88263";
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
