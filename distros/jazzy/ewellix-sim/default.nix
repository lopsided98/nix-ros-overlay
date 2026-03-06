
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ewellix-interfaces, ewellix-moveit-config, gz-ros2-control, ros-gz, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-ewellix-sim";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ewellix_lift_common-release/archive/release/jazzy/ewellix_sim/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "12d94ba81bf63bd2fce6b2f314dccdb1a74612fc731afa69b7e0cf4fc78193ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ewellix-interfaces ewellix-moveit-config gz-ros2-control ros-gz rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath's simulation package for Ewellix TLT lifting columns";
    license = with lib.licenses; [ bsd3 ];
  };
}
