
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ewellix-interfaces, ewellix-moveit-config, gz-ros2-control, ros-gz, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-ewellix-sim";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ewellix_lift_common-release/archive/release/jazzy/ewellix_sim/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "168352821766880c7419a4e18f186fe82ea81d32740ab406a8c221b49d7ddeca";
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
