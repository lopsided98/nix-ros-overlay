
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ewellix-interfaces, ewellix-moveit-config, ign-ros2-control, ros-gz, rviz2 }:
buildRosPackage {
  pname = "ros-humble-ewellix-sim";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ewellix_lift_common-release/archive/release/humble/ewellix_sim/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "00b49e376786e1bc638fa0722e97be565d0e0a41a62b8067b68dfb9f14a55460";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ewellix-interfaces ewellix-moveit-config ign-ros2-control ros-gz rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath's simulation package for Ewellix TLT lifting columns";
    license = with lib.licenses; [ bsd3 ];
  };
}
