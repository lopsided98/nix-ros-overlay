
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, xacro }:
buildRosPackage {
  pname = "ros-jazzy-autoware-sample-vehicle-description";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_sample_vehicle_description/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "2aaa367ed8c10bfa35e66752c042cea7c7f4616fb2eb87b3e5e90a2b620d109b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The autoware_sample_vehicle_description package";
    license = with lib.licenses; [ apl20 ];
  };
}
