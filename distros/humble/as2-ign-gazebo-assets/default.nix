
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, as2-core, geometry-msgs, python3Packages, rclcpp, ros-gz-bridge, ros-gz-sim, sensor-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-as2-ign-gazebo-assets";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_ign_gazebo_assets/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "5da4fc9b3cc15c501063ace6001df581432de073e78e0a9b4fe4c570c8a5a5fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ as2-core geometry-msgs python3Packages.jinja2 rclcpp ros-gz-bridge ros-gz-sim sensor-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Ignition Gazebo resources'';
    license = with lib.licenses; [ bsd3 ];
  };
}
